// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDetails _$UserDetailsFromJson(Map<String, dynamic> json) {
  return _UserDetails.fromJson(json);
}

/// @nodoc
mixin _$UserDetails {
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get mobile => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDetailsCopyWith<UserDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailsCopyWith<$Res> {
  factory $UserDetailsCopyWith(
          UserDetails value, $Res Function(UserDetails) then) =
      _$UserDetailsCopyWithImpl<$Res, UserDetails>;
  @useResult
  $Res call({String firstName, String lastName, String mobile, String email});
}

/// @nodoc
class _$UserDetailsCopyWithImpl<$Res, $Val extends UserDetails>
    implements $UserDetailsCopyWith<$Res> {
  _$UserDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? mobile = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserDetailsCopyWith<$Res>
    implements $UserDetailsCopyWith<$Res> {
  factory _$$_UserDetailsCopyWith(
          _$_UserDetails value, $Res Function(_$_UserDetails) then) =
      __$$_UserDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String firstName, String lastName, String mobile, String email});
}

/// @nodoc
class __$$_UserDetailsCopyWithImpl<$Res>
    extends _$UserDetailsCopyWithImpl<$Res, _$_UserDetails>
    implements _$$_UserDetailsCopyWith<$Res> {
  __$$_UserDetailsCopyWithImpl(
      _$_UserDetails _value, $Res Function(_$_UserDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? mobile = null,
    Object? email = null,
  }) {
    return _then(_$_UserDetails(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDetails implements _UserDetails {
  const _$_UserDetails(
      {required this.firstName,
      required this.lastName,
      required this.mobile,
      required this.email});

  factory _$_UserDetails.fromJson(Map<String, dynamic> json) =>
      _$$_UserDetailsFromJson(json);

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String mobile;
  @override
  final String email;

  @override
  String toString() {
    return 'UserDetails(firstName: $firstName, lastName: $lastName, mobile: $mobile, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDetails &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, firstName, lastName, mobile, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserDetailsCopyWith<_$_UserDetails> get copyWith =>
      __$$_UserDetailsCopyWithImpl<_$_UserDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDetailsToJson(
      this,
    );
  }
}

abstract class _UserDetails implements UserDetails {
  const factory _UserDetails(
      {required final String firstName,
      required final String lastName,
      required final String mobile,
      required final String email}) = _$_UserDetails;

  factory _UserDetails.fromJson(Map<String, dynamic> json) =
      _$_UserDetails.fromJson;

  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get mobile;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$_UserDetailsCopyWith<_$_UserDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
