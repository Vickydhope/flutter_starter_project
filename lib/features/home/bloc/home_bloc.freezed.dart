// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String custId) getUserMasterData,
    required TResult Function() getCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String custId)? getUserMasterData,
    TResult? Function()? getCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String custId)? getUserMasterData,
    TResult Function()? getCategories,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserMasterDataEvent value) getUserMasterData,
    required TResult Function(GetCategoriesEvent value) getCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserMasterDataEvent value)? getUserMasterData,
    TResult? Function(GetCategoriesEvent value)? getCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserMasterDataEvent value)? getUserMasterData,
    TResult Function(GetCategoriesEvent value)? getCategories,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetUserMasterDataEventCopyWith<$Res> {
  factory _$$GetUserMasterDataEventCopyWith(_$GetUserMasterDataEvent value,
          $Res Function(_$GetUserMasterDataEvent) then) =
      __$$GetUserMasterDataEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String custId});
}

/// @nodoc
class __$$GetUserMasterDataEventCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetUserMasterDataEvent>
    implements _$$GetUserMasterDataEventCopyWith<$Res> {
  __$$GetUserMasterDataEventCopyWithImpl(_$GetUserMasterDataEvent _value,
      $Res Function(_$GetUserMasterDataEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? custId = null,
  }) {
    return _then(_$GetUserMasterDataEvent(
      custId: null == custId
          ? _value.custId
          : custId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetUserMasterDataEvent implements GetUserMasterDataEvent {
  const _$GetUserMasterDataEvent({required this.custId});

  @override
  final String custId;

  @override
  String toString() {
    return 'HomeEvent.getUserMasterData(custId: $custId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserMasterDataEvent &&
            (identical(other.custId, custId) || other.custId == custId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, custId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserMasterDataEventCopyWith<_$GetUserMasterDataEvent> get copyWith =>
      __$$GetUserMasterDataEventCopyWithImpl<_$GetUserMasterDataEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String custId) getUserMasterData,
    required TResult Function() getCategories,
  }) {
    return getUserMasterData(custId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String custId)? getUserMasterData,
    TResult? Function()? getCategories,
  }) {
    return getUserMasterData?.call(custId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String custId)? getUserMasterData,
    TResult Function()? getCategories,
    required TResult orElse(),
  }) {
    if (getUserMasterData != null) {
      return getUserMasterData(custId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserMasterDataEvent value) getUserMasterData,
    required TResult Function(GetCategoriesEvent value) getCategories,
  }) {
    return getUserMasterData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserMasterDataEvent value)? getUserMasterData,
    TResult? Function(GetCategoriesEvent value)? getCategories,
  }) {
    return getUserMasterData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserMasterDataEvent value)? getUserMasterData,
    TResult Function(GetCategoriesEvent value)? getCategories,
    required TResult orElse(),
  }) {
    if (getUserMasterData != null) {
      return getUserMasterData(this);
    }
    return orElse();
  }
}

abstract class GetUserMasterDataEvent implements HomeEvent {
  const factory GetUserMasterDataEvent({required final String custId}) =
      _$GetUserMasterDataEvent;

  String get custId;
  @JsonKey(ignore: true)
  _$$GetUserMasterDataEventCopyWith<_$GetUserMasterDataEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCategoriesEventCopyWith<$Res> {
  factory _$$GetCategoriesEventCopyWith(_$GetCategoriesEvent value,
          $Res Function(_$GetCategoriesEvent) then) =
      __$$GetCategoriesEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCategoriesEventCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetCategoriesEvent>
    implements _$$GetCategoriesEventCopyWith<$Res> {
  __$$GetCategoriesEventCopyWithImpl(
      _$GetCategoriesEvent _value, $Res Function(_$GetCategoriesEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCategoriesEvent implements GetCategoriesEvent {
  const _$GetCategoriesEvent();

  @override
  String toString() {
    return 'HomeEvent.getCategories()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCategoriesEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String custId) getUserMasterData,
    required TResult Function() getCategories,
  }) {
    return getCategories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String custId)? getUserMasterData,
    TResult? Function()? getCategories,
  }) {
    return getCategories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String custId)? getUserMasterData,
    TResult Function()? getCategories,
    required TResult orElse(),
  }) {
    if (getCategories != null) {
      return getCategories();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserMasterDataEvent value) getUserMasterData,
    required TResult Function(GetCategoriesEvent value) getCategories,
  }) {
    return getCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserMasterDataEvent value)? getUserMasterData,
    TResult? Function(GetCategoriesEvent value)? getCategories,
  }) {
    return getCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserMasterDataEvent value)? getUserMasterData,
    TResult Function(GetCategoriesEvent value)? getCategories,
    required TResult orElse(),
  }) {
    if (getCategories != null) {
      return getCategories(this);
    }
    return orElse();
  }
}

abstract class GetCategoriesEvent implements HomeEvent {
  const factory GetCategoriesEvent() = _$GetCategoriesEvent;
}

/// @nodoc
mixin _$HomeState {
  ApiResponse<UserDetails> get apiResponse =>
      throw _privateConstructorUsedError;
  ApiResponse<CategoryResponse> get categoriesResponse =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {ApiResponse<UserDetails> apiResponse,
      ApiResponse<CategoryResponse> categoriesResponse});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiResponse = null,
    Object? categoriesResponse = null,
  }) {
    return _then(_value.copyWith(
      apiResponse: null == apiResponse
          ? _value.apiResponse
          : apiResponse // ignore: cast_nullable_to_non_nullable
              as ApiResponse<UserDetails>,
      categoriesResponse: null == categoriesResponse
          ? _value.categoriesResponse
          : categoriesResponse // ignore: cast_nullable_to_non_nullable
              as ApiResponse<CategoryResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ApiResponse<UserDetails> apiResponse,
      ApiResponse<CategoryResponse> categoriesResponse});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeState>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiResponse = null,
    Object? categoriesResponse = null,
  }) {
    return _then(_$_HomeState(
      apiResponse: null == apiResponse
          ? _value.apiResponse
          : apiResponse // ignore: cast_nullable_to_non_nullable
              as ApiResponse<UserDetails>,
      categoriesResponse: null == categoriesResponse
          ? _value.categoriesResponse
          : categoriesResponse // ignore: cast_nullable_to_non_nullable
              as ApiResponse<CategoryResponse>,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {required this.apiResponse, required this.categoriesResponse});

  @override
  final ApiResponse<UserDetails> apiResponse;
  @override
  final ApiResponse<CategoryResponse> categoriesResponse;

  @override
  String toString() {
    return 'HomeState(apiResponse: $apiResponse, categoriesResponse: $categoriesResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            (identical(other.apiResponse, apiResponse) ||
                other.apiResponse == apiResponse) &&
            (identical(other.categoriesResponse, categoriesResponse) ||
                other.categoriesResponse == categoriesResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiResponse, categoriesResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
          {required final ApiResponse<UserDetails> apiResponse,
          required final ApiResponse<CategoryResponse> categoriesResponse}) =
      _$_HomeState;

  @override
  ApiResponse<UserDetails> get apiResponse;
  @override
  ApiResponse<CategoryResponse> get categoriesResponse;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
