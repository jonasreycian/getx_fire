// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDetail _$UserDetailFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _UserDetail.fromJson(json);
    case 'empty':
      return _UserDetailEmpty.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'UserDetail',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$UserDetail {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id, String? firstName, String? lastName,
            BillingAddress? billingAddress)
        $default, {
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String id, String? firstName, String? lastName,
            BillingAddress? billingAddress)?
        $default, {
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id, String? firstName, String? lastName,
            BillingAddress? billingAddress)?
        $default, {
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UserDetail value) $default, {
    required TResult Function(_UserDetailEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UserDetail value)? $default, {
    TResult? Function(_UserDetailEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UserDetail value)? $default, {
    TResult Function(_UserDetailEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailCopyWith<$Res> {
  factory $UserDetailCopyWith(
          UserDetail value, $Res Function(UserDetail) then) =
      _$UserDetailCopyWithImpl<$Res, UserDetail>;
}

/// @nodoc
class _$UserDetailCopyWithImpl<$Res, $Val extends UserDetail>
    implements $UserDetailCopyWith<$Res> {
  _$UserDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UserDetailCopyWith<$Res> {
  factory _$$_UserDetailCopyWith(
          _$_UserDetail value, $Res Function(_$_UserDetail) then) =
      __$$_UserDetailCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String id,
      String? firstName,
      String? lastName,
      BillingAddress? billingAddress});

  $BillingAddressCopyWith<$Res>? get billingAddress;
}

/// @nodoc
class __$$_UserDetailCopyWithImpl<$Res>
    extends _$UserDetailCopyWithImpl<$Res, _$_UserDetail>
    implements _$$_UserDetailCopyWith<$Res> {
  __$$_UserDetailCopyWithImpl(
      _$_UserDetail _value, $Res Function(_$_UserDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? billingAddress = freezed,
  }) {
    return _then(_$_UserDetail(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      billingAddress: freezed == billingAddress
          ? _value.billingAddress
          : billingAddress // ignore: cast_nullable_to_non_nullable
              as BillingAddress?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BillingAddressCopyWith<$Res>? get billingAddress {
    if (_value.billingAddress == null) {
      return null;
    }

    return $BillingAddressCopyWith<$Res>(_value.billingAddress!, (value) {
      return _then(_value.copyWith(billingAddress: value));
    });
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_UserDetail extends _UserDetail {
  _$_UserDetail(
      {required this.id,
      this.firstName,
      this.lastName,
      this.billingAddress,
      final String? $type})
      : $type = $type ?? 'default',
        super._();

  factory _$_UserDetail.fromJson(Map<String, dynamic> json) =>
      _$$_UserDetailFromJson(json);

  @override
  final String id;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final BillingAddress? billingAddress;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UserDetail(id: $id, firstName: $firstName, lastName: $lastName, billingAddress: $billingAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDetail &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.billingAddress, billingAddress) ||
                other.billingAddress == billingAddress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, firstName, lastName, billingAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserDetailCopyWith<_$_UserDetail> get copyWith =>
      __$$_UserDetailCopyWithImpl<_$_UserDetail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id, String? firstName, String? lastName,
            BillingAddress? billingAddress)
        $default, {
    required TResult Function() empty,
  }) {
    return $default(id, firstName, lastName, billingAddress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String id, String? firstName, String? lastName,
            BillingAddress? billingAddress)?
        $default, {
    TResult? Function()? empty,
  }) {
    return $default?.call(id, firstName, lastName, billingAddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id, String? firstName, String? lastName,
            BillingAddress? billingAddress)?
        $default, {
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(id, firstName, lastName, billingAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UserDetail value) $default, {
    required TResult Function(_UserDetailEmpty value) empty,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UserDetail value)? $default, {
    TResult? Function(_UserDetailEmpty value)? empty,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UserDetail value)? $default, {
    TResult Function(_UserDetailEmpty value)? empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDetailToJson(
      this,
    );
  }
}

abstract class _UserDetail extends UserDetail {
  factory _UserDetail(
      {required final String id,
      final String? firstName,
      final String? lastName,
      final BillingAddress? billingAddress}) = _$_UserDetail;
  _UserDetail._() : super._();

  factory _UserDetail.fromJson(Map<String, dynamic> json) =
      _$_UserDetail.fromJson;

  String get id;
  String? get firstName;
  String? get lastName;
  BillingAddress? get billingAddress;
  @JsonKey(ignore: true)
  _$$_UserDetailCopyWith<_$_UserDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UserDetailEmptyCopyWith<$Res> {
  factory _$$_UserDetailEmptyCopyWith(
          _$_UserDetailEmpty value, $Res Function(_$_UserDetailEmpty) then) =
      __$$_UserDetailEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserDetailEmptyCopyWithImpl<$Res>
    extends _$UserDetailCopyWithImpl<$Res, _$_UserDetailEmpty>
    implements _$$_UserDetailEmptyCopyWith<$Res> {
  __$$_UserDetailEmptyCopyWithImpl(
      _$_UserDetailEmpty _value, $Res Function(_$_UserDetailEmpty) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_UserDetailEmpty extends _UserDetailEmpty {
  const _$_UserDetailEmpty({final String? $type})
      : $type = $type ?? 'empty',
        super._();

  factory _$_UserDetailEmpty.fromJson(Map<String, dynamic> json) =>
      _$$_UserDetailEmptyFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UserDetail.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserDetailEmpty);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id, String? firstName, String? lastName,
            BillingAddress? billingAddress)
        $default, {
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String id, String? firstName, String? lastName,
            BillingAddress? billingAddress)?
        $default, {
    TResult? Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id, String? firstName, String? lastName,
            BillingAddress? billingAddress)?
        $default, {
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UserDetail value) $default, {
    required TResult Function(_UserDetailEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UserDetail value)? $default, {
    TResult? Function(_UserDetailEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UserDetail value)? $default, {
    TResult Function(_UserDetailEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDetailEmptyToJson(
      this,
    );
  }
}

abstract class _UserDetailEmpty extends UserDetail {
  const factory _UserDetailEmpty() = _$_UserDetailEmpty;
  const _UserDetailEmpty._() : super._();

  factory _UserDetailEmpty.fromJson(Map<String, dynamic> json) =
      _$_UserDetailEmpty.fromJson;
}

BillingAddress _$BillingAddressFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _BillingAddress.fromJson(json);
    case 'empty':
      return _BillingAddressEmpty.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'BillingAddress',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$BillingAddress {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? street, String? city, String? state,
            String? country, String? zipCode)
        $default, {
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? street, String? city, String? state,
            String? country, String? zipCode)?
        $default, {
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? street, String? city, String? state,
            String? country, String? zipCode)?
        $default, {
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BillingAddress value) $default, {
    required TResult Function(_BillingAddressEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BillingAddress value)? $default, {
    TResult? Function(_BillingAddressEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BillingAddress value)? $default, {
    TResult Function(_BillingAddressEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillingAddressCopyWith<$Res> {
  factory $BillingAddressCopyWith(
          BillingAddress value, $Res Function(BillingAddress) then) =
      _$BillingAddressCopyWithImpl<$Res, BillingAddress>;
}

/// @nodoc
class _$BillingAddressCopyWithImpl<$Res, $Val extends BillingAddress>
    implements $BillingAddressCopyWith<$Res> {
  _$BillingAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_BillingAddressCopyWith<$Res> {
  factory _$$_BillingAddressCopyWith(
          _$_BillingAddress value, $Res Function(_$_BillingAddress) then) =
      __$$_BillingAddressCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? street,
      String? city,
      String? state,
      String? country,
      String? zipCode});
}

/// @nodoc
class __$$_BillingAddressCopyWithImpl<$Res>
    extends _$BillingAddressCopyWithImpl<$Res, _$_BillingAddress>
    implements _$$_BillingAddressCopyWith<$Res> {
  __$$_BillingAddressCopyWithImpl(
      _$_BillingAddress _value, $Res Function(_$_BillingAddress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? street = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? zipCode = freezed,
  }) {
    return _then(_$_BillingAddress(
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      zipCode: freezed == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_BillingAddress extends _BillingAddress {
  _$_BillingAddress(
      {this.street,
      this.city,
      this.state,
      this.country,
      this.zipCode,
      final String? $type})
      : $type = $type ?? 'default',
        super._();

  factory _$_BillingAddress.fromJson(Map<String, dynamic> json) =>
      _$$_BillingAddressFromJson(json);

  @override
  final String? street;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? country;
  @override
  final String? zipCode;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'BillingAddress(street: $street, city: $city, state: $state, country: $country, zipCode: $zipCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BillingAddress &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, street, city, state, country, zipCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BillingAddressCopyWith<_$_BillingAddress> get copyWith =>
      __$$_BillingAddressCopyWithImpl<_$_BillingAddress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? street, String? city, String? state,
            String? country, String? zipCode)
        $default, {
    required TResult Function() empty,
  }) {
    return $default(street, city, state, country, zipCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? street, String? city, String? state,
            String? country, String? zipCode)?
        $default, {
    TResult? Function()? empty,
  }) {
    return $default?.call(street, city, state, country, zipCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? street, String? city, String? state,
            String? country, String? zipCode)?
        $default, {
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(street, city, state, country, zipCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BillingAddress value) $default, {
    required TResult Function(_BillingAddressEmpty value) empty,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BillingAddress value)? $default, {
    TResult? Function(_BillingAddressEmpty value)? empty,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BillingAddress value)? $default, {
    TResult Function(_BillingAddressEmpty value)? empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_BillingAddressToJson(
      this,
    );
  }
}

abstract class _BillingAddress extends BillingAddress {
  factory _BillingAddress(
      {final String? street,
      final String? city,
      final String? state,
      final String? country,
      final String? zipCode}) = _$_BillingAddress;
  _BillingAddress._() : super._();

  factory _BillingAddress.fromJson(Map<String, dynamic> json) =
      _$_BillingAddress.fromJson;

  String? get street;
  String? get city;
  String? get state;
  String? get country;
  String? get zipCode;
  @JsonKey(ignore: true)
  _$$_BillingAddressCopyWith<_$_BillingAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_BillingAddressEmptyCopyWith<$Res> {
  factory _$$_BillingAddressEmptyCopyWith(_$_BillingAddressEmpty value,
          $Res Function(_$_BillingAddressEmpty) then) =
      __$$_BillingAddressEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_BillingAddressEmptyCopyWithImpl<$Res>
    extends _$BillingAddressCopyWithImpl<$Res, _$_BillingAddressEmpty>
    implements _$$_BillingAddressEmptyCopyWith<$Res> {
  __$$_BillingAddressEmptyCopyWithImpl(_$_BillingAddressEmpty _value,
      $Res Function(_$_BillingAddressEmpty) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_BillingAddressEmpty extends _BillingAddressEmpty {
  const _$_BillingAddressEmpty({final String? $type})
      : $type = $type ?? 'empty',
        super._();

  factory _$_BillingAddressEmpty.fromJson(Map<String, dynamic> json) =>
      _$$_BillingAddressEmptyFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'BillingAddress.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_BillingAddressEmpty);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? street, String? city, String? state,
            String? country, String? zipCode)
        $default, {
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? street, String? city, String? state,
            String? country, String? zipCode)?
        $default, {
    TResult? Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? street, String? city, String? state,
            String? country, String? zipCode)?
        $default, {
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BillingAddress value) $default, {
    required TResult Function(_BillingAddressEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BillingAddress value)? $default, {
    TResult? Function(_BillingAddressEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BillingAddress value)? $default, {
    TResult Function(_BillingAddressEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_BillingAddressEmptyToJson(
      this,
    );
  }
}

abstract class _BillingAddressEmpty extends BillingAddress {
  const factory _BillingAddressEmpty() = _$_BillingAddressEmpty;
  const _BillingAddressEmpty._() : super._();

  factory _BillingAddressEmpty.fromJson(Map<String, dynamic> json) =
      _$_BillingAddressEmpty.fromJson;
}

ParsedGoogleToken _$ParsedGoogleTokenFromJson(Map<String, dynamic> json) {
  return _ParsedGoogleToken.fromJson(json);
}

/// @nodoc
mixin _$ParsedGoogleToken {
  String get givenName => throw _privateConstructorUsedError;
  String get familyName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParsedGoogleTokenCopyWith<ParsedGoogleToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParsedGoogleTokenCopyWith<$Res> {
  factory $ParsedGoogleTokenCopyWith(
          ParsedGoogleToken value, $Res Function(ParsedGoogleToken) then) =
      _$ParsedGoogleTokenCopyWithImpl<$Res, ParsedGoogleToken>;
  @useResult
  $Res call({String givenName, String familyName});
}

/// @nodoc
class _$ParsedGoogleTokenCopyWithImpl<$Res, $Val extends ParsedGoogleToken>
    implements $ParsedGoogleTokenCopyWith<$Res> {
  _$ParsedGoogleTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? givenName = null,
    Object? familyName = null,
  }) {
    return _then(_value.copyWith(
      givenName: null == givenName
          ? _value.givenName
          : givenName // ignore: cast_nullable_to_non_nullable
              as String,
      familyName: null == familyName
          ? _value.familyName
          : familyName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ParsedGoogleTokenCopyWith<$Res>
    implements $ParsedGoogleTokenCopyWith<$Res> {
  factory _$$_ParsedGoogleTokenCopyWith(_$_ParsedGoogleToken value,
          $Res Function(_$_ParsedGoogleToken) then) =
      __$$_ParsedGoogleTokenCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String givenName, String familyName});
}

/// @nodoc
class __$$_ParsedGoogleTokenCopyWithImpl<$Res>
    extends _$ParsedGoogleTokenCopyWithImpl<$Res, _$_ParsedGoogleToken>
    implements _$$_ParsedGoogleTokenCopyWith<$Res> {
  __$$_ParsedGoogleTokenCopyWithImpl(
      _$_ParsedGoogleToken _value, $Res Function(_$_ParsedGoogleToken) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? givenName = null,
    Object? familyName = null,
  }) {
    return _then(_$_ParsedGoogleToken(
      givenName: null == givenName
          ? _value.givenName
          : givenName // ignore: cast_nullable_to_non_nullable
              as String,
      familyName: null == familyName
          ? _value.familyName
          : familyName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_ParsedGoogleToken extends _ParsedGoogleToken {
  _$_ParsedGoogleToken({required this.givenName, required this.familyName})
      : super._();

  factory _$_ParsedGoogleToken.fromJson(Map<String, dynamic> json) =>
      _$$_ParsedGoogleTokenFromJson(json);

  @override
  final String givenName;
  @override
  final String familyName;

  @override
  String toString() {
    return 'ParsedGoogleToken(givenName: $givenName, familyName: $familyName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ParsedGoogleToken &&
            (identical(other.givenName, givenName) ||
                other.givenName == givenName) &&
            (identical(other.familyName, familyName) ||
                other.familyName == familyName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, givenName, familyName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ParsedGoogleTokenCopyWith<_$_ParsedGoogleToken> get copyWith =>
      __$$_ParsedGoogleTokenCopyWithImpl<_$_ParsedGoogleToken>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ParsedGoogleTokenToJson(
      this,
    );
  }
}

abstract class _ParsedGoogleToken extends ParsedGoogleToken {
  factory _ParsedGoogleToken(
      {required final String givenName,
      required final String familyName}) = _$_ParsedGoogleToken;
  _ParsedGoogleToken._() : super._();

  factory _ParsedGoogleToken.fromJson(Map<String, dynamic> json) =
      _$_ParsedGoogleToken.fromJson;

  @override
  String get givenName;
  @override
  String get familyName;
  @override
  @JsonKey(ignore: true)
  _$$_ParsedGoogleTokenCopyWith<_$_ParsedGoogleToken> get copyWith =>
      throw _privateConstructorUsedError;
}
