// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDetail _$$_UserDetailFromJson(Map<String, dynamic> json) =>
    _$_UserDetail(
      id: json['id'] as String,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      billingAddress: json['billing_address'] == null
          ? null
          : BillingAddress.fromJson(
              json['billing_address'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_UserDetailToJson(_$_UserDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'billing_address': instance.billingAddress,
      'runtimeType': instance.$type,
    };

_$_UserDetailEmpty _$$_UserDetailEmptyFromJson(Map<String, dynamic> json) =>
    _$_UserDetailEmpty(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_UserDetailEmptyToJson(_$_UserDetailEmpty instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$_BillingAddress _$$_BillingAddressFromJson(Map<String, dynamic> json) =>
    _$_BillingAddress(
      street: json['street'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      country: json['country'] as String?,
      zipCode: json['zip_code'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_BillingAddressToJson(_$_BillingAddress instance) =>
    <String, dynamic>{
      'street': instance.street,
      'city': instance.city,
      'state': instance.state,
      'country': instance.country,
      'zip_code': instance.zipCode,
      'runtimeType': instance.$type,
    };

_$_BillingAddressEmpty _$$_BillingAddressEmptyFromJson(
        Map<String, dynamic> json) =>
    _$_BillingAddressEmpty(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_BillingAddressEmptyToJson(
        _$_BillingAddressEmpty instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$_ParsedGoogleToken _$$_ParsedGoogleTokenFromJson(Map<String, dynamic> json) =>
    _$_ParsedGoogleToken(
      givenName: json['given_name'] as String,
      familyName: json['family_name'] as String,
    );

Map<String, dynamic> _$$_ParsedGoogleTokenToJson(
        _$_ParsedGoogleToken instance) =>
    <String, dynamic>{
      'given_name': instance.givenName,
      'family_name': instance.familyName,
    };
