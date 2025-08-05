part of 'items_bloc.dart';

enum ItemsStatus { loading, success, failure }

@freezed
sealed class ItemsState with _$ItemsState {
  const factory ItemsState({
    required ItemsStatus status,
    required List<Item> items,
    String? error,
  }) = _ItemsState;

  factory ItemsState.initial() =>
      const ItemsState(status: ItemsStatus.loading, items: [], error: null);
}
