import 'dart:convert';

import 'package:mini_app_task/data/data_source/item_api.dart';
import 'package:mini_app_task/data/model/item.dart';
import 'package:rxdart/subjects.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// {@template ItemStorageNoteApi}
/// A Flutter implementation of the [Item] that uses local storage.
/// {@endtemplate}
class ItemStorageNoteApi extends ItemApi {
  /// {@macro LocalStorageNoteApi}
  ItemStorageNoteApi({required SharedPreferences plugin}) : _plugin = plugin {
    _init();
  }

  final SharedPreferences _plugin;

  late final _noteStreamController = BehaviorSubject<List<Item>>.seeded(const []);
  static const kNotesCollectionKey = '__items_collection_key__';

  String? _getValue(String key) => _plugin.getString(key);

  /// Fetch stored list of items on init
  void _init() {
    final itemsJson = _getValue(kNotesCollectionKey);

    if (itemsJson != null) {
      final decoded = jsonDecode(itemsJson) as List;
      final items =
          decoded.map((itemJson) => Item.fromJson(Map<String, dynamic>.from(itemJson))).toList();
      _noteStreamController.add(items);
    } else {
      final items = [
        Item(
          id: '1',
          title: 'Item 1',
          favorite: false,
          createdAt: DateTime.parse('2025-08-01T10:00:00Z'),
          coloredTag: ColoredTag.newTag,
        ),
        Item(
          id: '2',
          title: 'Item 2',
          favorite: false,
          createdAt: DateTime.parse('2025-08-02T11:30:00Z'),
          coloredTag: ColoredTag.old,
        ),
        Item(
          id: '3',
          title: 'Item 3',
          favorite: false,
          createdAt: DateTime.parse('2025-08-03T14:45:00Z'),
          coloredTag: ColoredTag.hot,
        ),
        Item(
          id: '4',
          title: 'Item 4',
          favorite: false,
          createdAt: DateTime.parse('2025-08-04T09:15:00Z'),
          coloredTag: ColoredTag.newTag,
        ),
        Item(
          id: '5',
          title: 'Item 5',
          favorite: false,
          createdAt: DateTime.parse('2025-08-05T17:20:00Z'),
          coloredTag: ColoredTag.old,
        ),
        Item(
          id: '6',
          title: 'Item 6',
          favorite: false,
          createdAt: DateTime.parse('2025-08-06T13:05:00Z'),
          coloredTag: ColoredTag.hot,
        ),
        Item(
          id: '7',
          title: 'Item 7',
          favorite: false,
          createdAt: DateTime.parse('2025-08-07T12:00:00Z'),
          coloredTag: ColoredTag.newTag,
        ),
        Item(
          id: '8',
          title: 'Item 8',
          favorite: false,
          createdAt: DateTime.parse('2025-08-08T08:45:00Z'),
          coloredTag: ColoredTag.old,
        ),
        Item(
          id: '9',
          title: 'Item 9',
          favorite: false,
          createdAt: DateTime.parse('2025-08-09T16:30:00Z'),
          coloredTag: ColoredTag.hot,
        ),
        Item(
          id: '10',
          title: 'Item 10',
          favorite: false,
          createdAt: DateTime.parse('2025-08-10T18:55:00Z'),
          coloredTag: ColoredTag.newTag,
        ),
      ];

      _noteStreamController.add(items);
    }
  }

  @override
  Future<void> saveFavorite(Item updatedItem) async {
    try {
      final currentItems = _noteStreamController.value;

      final newItems =
          currentItems.map((item) {
            return item.id == updatedItem.id ? updatedItem : item;
          }).toList();

      // Save to SharedPreferences
      final encodedItems = jsonEncode(newItems.map((item) => item.toJson()).toList());
      await _plugin.setString(kNotesCollectionKey, encodedItems);

      // Emit updated list
      _noteStreamController.add(newItems);
    } catch (e) {
      throw Exception('Failed to save favorite: $e');
    }
  }

  @override
  Future<void> close() {
    _noteStreamController.close();
    throw UnimplementedError();
  }

  @override
  Stream<List<Item>> getItems() => _noteStreamController.asBroadcastStream();
}
