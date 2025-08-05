part of 'items_bloc.dart';

@freezed
sealed class ItemsEvent with _$ItemsEvent {
  const factory ItemsEvent.getItems() = GetItems;
}
