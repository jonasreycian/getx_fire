// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';
part 'models.g.dart';

/// {@template UserDetail}
///  A UserDetail model that represents a UserDetail in the app.
///
///  This can be extended to include more fields.
/// {@endtemplate}
@Freezed(
  fromJson: true,
  toJson: true,
  makeCollectionsUnmodifiable: false,
)
class UserDetail with _$UserDetail {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory UserDetail({
    required String id,
    String? firstName,
    String? lastName,
    BillingAddress? billingAddress,
  }) = _UserDetail;

  /// Added this so we can add a getter
  const UserDetail._();

  // Getters for the properties
  String get id => id;
  String? get firstName => firstName;
  String? get lastName => lastName;
  BillingAddress? get billingAddress => billingAddress;

  // Defined getters
  bool get isEmpty => this is _UserDetailEmpty;
  String get fullName => '$firstName $lastName';

  const factory UserDetail.empty() = _UserDetailEmpty;
}

/// {@template BillingAddress}
///
/// A class the represents a BillingAddress
///
/// {@endtemplate}
@Freezed(
  fromJson: true,
  toJson: true,
  makeCollectionsUnmodifiable: false,
)
class BillingAddress with _$BillingAddress {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory BillingAddress({
    String? street,
    String? city,
    String? state,
    String? country,
    String? zipCode,
  }) = _BillingAddress;

  const BillingAddress._();

  // Getters for the properties
  String? get street => street;
  String? get city => city;
  String? get state => state;
  String? get country => country;
  String? get zipCode => zipCode;

  factory BillingAddress.fromJson(Map<String, dynamic> json) =>
      _$BillingAddressFromJson(json);
  const factory BillingAddress.empty() = _BillingAddressEmpty;

  bool get isEmpty => this is _BillingAddressEmpty;
}

/// {@template ParsedGoogleToken}
/// A class that represents a properties found in a parsed Google Token
///
/// Found properties:
/// - given_name
/// - family_name
///
/// Additional properties can be added as needed
/// {@endtemplate}
@Freezed(
  fromJson: true,
  toJson: true,
)
class ParsedGoogleToken {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory ParsedGoogleToken({
    required String givenName,
    required String familyName,
  }) = _ParsedGoogleToken;

  const ParsedGoogleToken._();

  // Getters for the properties
  String get givenName => givenName;
  String get familyName => familyName;

  // Add named constructor to parse a json
  factory ParsedGoogleToken.fromJson(Map<String, dynamic> json) =>
      _$ParsedGoogleTokenFromJson(json);
}
