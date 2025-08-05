import 'package:mini_app_task/data/model/item.dart';

/// {@template ItemApi}
/// The interface for an API that provides data manipulataion to a list of item.
/// {@endtemplate}
abstract class ItemApi {
  /// {@macro ItemApi}
  const ItemApi();

  /// {@template ItemApi.getItems}
  /// Provides a [Stream] of all items.
  /// {@endtemplate}
  Stream<List<Item>> getItems();

  /// {@template ItemApi.saveFavorite}
  /// Updates the favorite status of the given [Item].
  /// {@endtemplate}
  Future<void> saveFavorite(Item item);

  /// {@template ItemApi.close}
  /// Closes the client and frees up any resources.
  /// {@endtemplate}
  Future<void> close();
}

/// {@template ItemNotFoundException}
/// Error thrown when a [Item] with a given id is not found.
/// {@endtemplate}
class ItemNotFoundException implements Exception {}
