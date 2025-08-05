import 'package:freezed_annotation/freezed_annotation.dart';

part 'item.freezed.dart';
part 'item.g.dart';

enum ColoredTag {
  @JsonValue('New')
  newTag,

  @JsonValue('Old')
  old,

  @JsonValue('Hot')
  hot,
}

@freezed
sealed class Item with _$Item {
  const factory Item({
    required String title,
    required bool favorite,
    required DateTime createdAt,
    required ColoredTag coloredTag,
  }) = _Item;

  factory Item.fromJson(Map<String, Object?> json) => _$ItemFromJson(json);
}
