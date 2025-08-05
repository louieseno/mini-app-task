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
    final notesJson = _getValue(kNotesCollectionKey);
    if (notesJson != null) {
      final notes =
          List<Map<dynamic, dynamic>>.from(
            jsonDecode(notesJson) as List,
          ).map((jsonMap) => Item.fromJson(Map<String, dynamic>.from(jsonMap))).toList();
      _noteStreamController.add(notes);
    } else {
      _noteStreamController.add(const []);
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
