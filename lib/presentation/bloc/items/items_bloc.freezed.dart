// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'items_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ItemsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ItemsEvent()';
}


}

/// @nodoc
class $ItemsEventCopyWith<$Res>  {
$ItemsEventCopyWith(ItemsEvent _, $Res Function(ItemsEvent) __);
}


/// Adds pattern-matching-related methods to [ItemsEvent].
extension ItemsEventPatterns on ItemsEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetItems value)?  getItems,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetItems() when getItems != null:
return getItems(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetItems value)  getItems,}){
final _that = this;
switch (_that) {
case GetItems():
return getItems(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetItems value)?  getItems,}){
final _that = this;
switch (_that) {
case GetItems() when getItems != null:
return getItems(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getItems,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetItems() when getItems != null:
return getItems();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getItems,}) {final _that = this;
switch (_that) {
case GetItems():
return getItems();}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getItems,}) {final _that = this;
switch (_that) {
case GetItems() when getItems != null:
return getItems();case _:
  return null;

}
}

}

/// @nodoc


class GetItems implements ItemsEvent {
  const GetItems();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetItems);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ItemsEvent.getItems()';
}


}




/// @nodoc
mixin _$ItemsState {

 ItemsStatus get status; List<Item> get items; String? get error;
/// Create a copy of ItemsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemsStateCopyWith<ItemsState> get copyWith => _$ItemsStateCopyWithImpl<ItemsState>(this as ItemsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemsState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(items),error);

@override
String toString() {
  return 'ItemsState(status: $status, items: $items, error: $error)';
}


}

/// @nodoc
abstract mixin class $ItemsStateCopyWith<$Res>  {
  factory $ItemsStateCopyWith(ItemsState value, $Res Function(ItemsState) _then) = _$ItemsStateCopyWithImpl;
@useResult
$Res call({
 ItemsStatus status, List<Item> items, String? error
});




}
/// @nodoc
class _$ItemsStateCopyWithImpl<$Res>
    implements $ItemsStateCopyWith<$Res> {
  _$ItemsStateCopyWithImpl(this._self, this._then);

  final ItemsState _self;
  final $Res Function(ItemsState) _then;

/// Create a copy of ItemsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? items = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ItemsStatus,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<Item>,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ItemsState].
extension ItemsStatePatterns on ItemsState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ItemsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ItemsState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ItemsState value)  $default,){
final _that = this;
switch (_that) {
case _ItemsState():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ItemsState value)?  $default,){
final _that = this;
switch (_that) {
case _ItemsState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ItemsStatus status,  List<Item> items,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ItemsState() when $default != null:
return $default(_that.status,_that.items,_that.error);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ItemsStatus status,  List<Item> items,  String? error)  $default,) {final _that = this;
switch (_that) {
case _ItemsState():
return $default(_that.status,_that.items,_that.error);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ItemsStatus status,  List<Item> items,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _ItemsState() when $default != null:
return $default(_that.status,_that.items,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _ItemsState implements ItemsState {
  const _ItemsState({required this.status, required final  List<Item> items, this.error}): _items = items;
  

@override final  ItemsStatus status;
 final  List<Item> _items;
@override List<Item> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String? error;

/// Create a copy of ItemsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemsStateCopyWith<_ItemsState> get copyWith => __$ItemsStateCopyWithImpl<_ItemsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemsState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_items),error);

@override
String toString() {
  return 'ItemsState(status: $status, items: $items, error: $error)';
}


}

/// @nodoc
abstract mixin class _$ItemsStateCopyWith<$Res> implements $ItemsStateCopyWith<$Res> {
  factory _$ItemsStateCopyWith(_ItemsState value, $Res Function(_ItemsState) _then) = __$ItemsStateCopyWithImpl;
@override @useResult
$Res call({
 ItemsStatus status, List<Item> items, String? error
});




}
/// @nodoc
class __$ItemsStateCopyWithImpl<$Res>
    implements _$ItemsStateCopyWith<$Res> {
  __$ItemsStateCopyWithImpl(this._self, this._then);

  final _ItemsState _self;
  final $Res Function(_ItemsState) _then;

/// Create a copy of ItemsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? items = null,Object? error = freezed,}) {
  return _then(_ItemsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ItemsStatus,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<Item>,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
