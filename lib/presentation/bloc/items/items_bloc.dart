import 'package:bloc/bloc.dart';
import 'package:mini_app_task/data/model/item.dart';
import 'package:mini_app_task/domain/repository/item_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'items_event.dart';
part 'items_state.dart';
part 'items_bloc.freezed.dart';

class ItemsBloc extends Bloc<ItemsEvent, ItemsState> {
  ItemsBloc({required this.itemRepository}) : super(ItemsState.initial()) {
    on<GetItems>(_onGetItems);
    on<SaveFavorite>(_onSaveFavorite);
  }

  @protected
  final ItemRepository itemRepository;

  Future<void> _onGetItems(GetItems event, Emitter<ItemsState> emit) async {
    emit(state.copyWith(status: ItemsStatus.loading));

    await emit.forEach<List<Item>>(
      itemRepository.getItems(), // this must return Stream<List<Item>>
      onData: (items) => state.copyWith(status: ItemsStatus.success, items: items, error: null),
      onError:
          (error, _) => state.copyWith(
            status: ItemsStatus.failure,
            items: [],
            error: Error.safeToString(error),
          ),
    );
  }

  Future<void> _onSaveFavorite(SaveFavorite event, Emitter<ItemsState> emit) async {
    try {
      final itemId = event.id;
      final currentItem = state.items.firstWhere((item) => item.id == itemId);

      // Toggle favorite value
      final updatedItem = currentItem.copyWith(favorite: !currentItem.favorite);

      // Save to repository
      await itemRepository.saveFavorite(updatedItem);

      // Optionally: update local list
      final updatedItems =
          state.items.map((item) {
            return item.id == itemId ? updatedItem : item;
          }).toList();

      emit(state.copyWith(items: updatedItems));
    } catch (error) {
      emit(state.copyWith(status: ItemsStatus.failure, error: Error.safeToString(error)));
    }
  }
}
