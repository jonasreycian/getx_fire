import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';

import '../../getx_fire.dart';

class Helpers {
  /// {@template parse_google_token}
  /// Parses the [token] and returns a [ParsedGoogleToken].
  ///
  /// Returns null if the token is invalid.
  ///
  /// @param token A Google token to parse.
  /// {@endtemplate}
  static ParsedGoogleToken? parseGoogleToken(String? token) {
    if (token == null) return null;

    final parts = token.split('.');
    if (parts.length != 3) return null;

    try {
      final payload = parts[1];
      final normalized = base64Url.normalize(payload);
      final decoded = utf8.decode(base64Url.decode(normalized));
      final payloadMap = json.decode(decoded) as Map<String, dynamic>;
      return ParsedGoogleToken.fromJson(payloadMap);
    } catch (e) {
      return null;
    }
  }

  /// Returns the sha256 hash of [input] in hex notation.
  static String sha256ofString(String input) {
    final bytes = utf8.encode(input);
    final digest = sha256.convert(bytes);
    return digest.toString();
  }

  /// Returns the sha512 hash of [input] in hex notation.
  static String sha512ofString(String input) {
    final bytes = utf8.encode(input);
    final digest = sha512.convert(bytes);
    return digest.toString();
  }

  /// Returns the sha1 hash of [input] in hex notation.
  static String sha1OfString(String input) {
    final bytes = utf8.encode(input);
    final digest = sha1.convert(bytes);
    return digest.toString();
  }

  /// Generates a cryptographically secure random nonce.
  static String generateNonce([int length = 32]) {
    const charset =
        '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';
    final random = Random.secure();
    return List.generate(length, (_) => charset[random.nextInt(charset.length)])
        .join();
  }
}
