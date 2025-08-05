import 'package:flutter/foundation.dart';
import 'package:mini_app_task/data/data_source/item_api.dart';
import 'package:mini_app_task/data/model/item.dart';

/// {@template ItemRepository}
/// A repository that orchestrate or handles `item` related requests.
/// {@endtemplate}
class ItemRepository {
  /// {@macro ItemRepository}
  const ItemRepository({required ItemApi itemApi}) : _itemApi = itemApi;

  @protected
  final ItemApi _itemApi;

  /// Provides a [Stream] of all items.
  Stream<List<Item>> getItems() => _itemApi.getItems();

  /// Updates the favorite status of an item.
  Future<void> saveFavorite(Item item) => _itemApi.saveFavorite(item);
}
