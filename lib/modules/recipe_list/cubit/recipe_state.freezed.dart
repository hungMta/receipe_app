// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecipeState {
  RecipeStatus get status => throw _privateConstructorUsedError;
  List<Recipe> get recipes => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecipeStateCopyWith<RecipeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeStateCopyWith<$Res> {
  factory $RecipeStateCopyWith(
          RecipeState value, $Res Function(RecipeState) then) =
      _$RecipeStateCopyWithImpl<$Res, RecipeState>;
  @useResult
  $Res call({RecipeStatus status, List<Recipe> recipes, Object? error});
}

/// @nodoc
class _$RecipeStateCopyWithImpl<$Res, $Val extends RecipeState>
    implements $RecipeStateCopyWith<$Res> {
  _$RecipeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? recipes = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RecipeStatus,
      recipes: null == recipes
          ? _value.recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
      error: freezed == error ? _value.error : error,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecipeStateCopyWith<$Res>
    implements $RecipeStateCopyWith<$Res> {
  factory _$$_RecipeStateCopyWith(
          _$_RecipeState value, $Res Function(_$_RecipeState) then) =
      __$$_RecipeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RecipeStatus status, List<Recipe> recipes, Object? error});
}

/// @nodoc
class __$$_RecipeStateCopyWithImpl<$Res>
    extends _$RecipeStateCopyWithImpl<$Res, _$_RecipeState>
    implements _$$_RecipeStateCopyWith<$Res> {
  __$$_RecipeStateCopyWithImpl(
      _$_RecipeState _value, $Res Function(_$_RecipeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? recipes = null,
    Object? error = freezed,
  }) {
    return _then(_$_RecipeState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RecipeStatus,
      recipes: null == recipes
          ? _value._recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_RecipeState implements _RecipeState {
  const _$_RecipeState(
      {required this.status, required final List<Recipe> recipes, this.error})
      : _recipes = recipes;

  @override
  final RecipeStatus status;
  final List<Recipe> _recipes;
  @override
  List<Recipe> get recipes {
    if (_recipes is EqualUnmodifiableListView) return _recipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipes);
  }

  @override
  final Object? error;

  @override
  String toString() {
    return 'RecipeState(status: $status, recipes: $recipes, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecipeState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._recipes, _recipes) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_recipes),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecipeStateCopyWith<_$_RecipeState> get copyWith =>
      __$$_RecipeStateCopyWithImpl<_$_RecipeState>(this, _$identity);
}

abstract class _RecipeState implements RecipeState {
  const factory _RecipeState(
      {required final RecipeStatus status,
      required final List<Recipe> recipes,
      final Object? error}) = _$_RecipeState;

  @override
  RecipeStatus get status;
  @override
  List<Recipe> get recipes;
  @override
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$_RecipeStateCopyWith<_$_RecipeState> get copyWith =>
      throw _privateConstructorUsedError;
}
