// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Item _$ItemFromJson(Map<String, dynamic> json) => _Item(
  id: json['id'] as String,
  title: json['title'] as String,
  favorite: json['favorite'] as bool,
  createdAt: DateTime.parse(json['createdAt'] as String),
  coloredTag: $enumDecode(_$ColoredTagEnumMap, json['coloredTag']),
);

Map<String, dynamic> _$ItemToJson(_Item instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'favorite': instance.favorite,
  'createdAt': instance.createdAt.toIso8601String(),
  'coloredTag': _$ColoredTagEnumMap[instance.coloredTag]!,
};

const _$ColoredTagEnumMap = {
  ColoredTag.newTag: 'New',
  ColoredTag.old: 'Old',
  ColoredTag.hot: 'Hot',
};
