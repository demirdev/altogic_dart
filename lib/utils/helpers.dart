import 'dart:html' if (dart.library.io) 'fake/fake_html.dart' as _html;

import 'package:flutter/foundation.dart';

import 'client_error.dart';

/**
 * Removes trailing slash character from input url string.
 * @export
 * @param {string} url  The url string to revove trailing slach
 * @returns Trailed url string
 */
String removeTrailingSlash(String url) {
  if (url.endsWith('/')) {
    return url.substring(0, url.length - 1);
// return url.replace(/\/$/, "");
  }
  return url;
}

/**
 * Normalizes the input url string by trimming spaces and removing any trailing slash character.
 * @export
 * @param {string} url The url string to normalize
 * @returns Normalized url string
 */
String normalizeUrl(String url) {
  return removeTrailingSlash(url.trim());
}

/**
 * Retrieves the query string parameter value from the browser url.
 * @export
 * @param {string} paramName The name of the query string parameter
 * @returns {string | null} The value of the parameter if found in query string part of the url or null otherwise
 */

String? getParamValue(String? paramName, {String? urlForTesting}) {
  if (paramName == null) return null;

  final _url = kIsWeb ? _html.window.location.href : (urlForTesting ?? '');

  final _params = Uri.parse(_url).queryParameters;
  return _params[paramName];
}

/**
 * Checks whether the input field value is specified or not.
 * @export
 * @param {string} fieldName Field name to check for a value
 * @param {any} fieldValue Field value
 * @param {any} checkEmptyString Flag to check empty strings or not
 * @throws Throws an exception if 'fieldValue' is 'null' or 'undefined'. If 'checkEmptyString=true', throws an exception if string is empty.
 */

void checkRequired(String? fieldName, dynamic fieldValue,
    [bool checkEmptyString = true]) {
  if (fieldName == null) {
    throw ClientError("missing_required_value",
        '$fieldName is a required parameter, cannot be left empty');
  }

  if (checkEmptyString &&
      (fieldValue == "" ||
          ((fieldValue) is String && fieldValue.trim() == ""))) {
    throw ClientError("missing_required_value",
        '$fieldName is a required parameter, cannot be left empty');
  }
}

/**
 * Checks whether the input field value is an array or not.
 * @export
 * @param {string} fieldName Field name to check for a value
 * @param {any} fieldValue Field value
 * @param {any} checkEmptyArray Flag to check empty arrays or not
 * @throws Throws an exception if 'fieldValue' is not an array. If 'checkEmptyArray=true', throws an exception if array is empty.
 */

void arrayRequired(
  String fieldName,
  dynamic fieldValue, [
  bool checkEmptyArray = false,
]) {
  checkRequired(fieldName, fieldValue, false);

  if (fieldValue is! List) {
    throw ClientError("invalid_value", '$fieldName needs to be an array');
  }

  if (checkEmptyArray && fieldValue.isEmpty) {
    throw ClientError("emtpy_array",
        '$fieldName needs to be an array with at least one entry');
  }
}

/**
 * Checks whether the input field value is an integer or not
 * @export
 * @param {string} fieldName Field name to check for a value
 * @param {any} fieldValue Field value
 * @param {any} checkPositive Flag to check whether the number is positive or not
 * @throws Throws an exception if 'fieldValue' is not an integer. If 'checkPositive=true', throws an exception if 'fieldValue<=0'.
 */
void integerRequired(String fieldName, dynamic fieldValue,
    [bool checkPositive = true]) {
  checkRequired(fieldName, fieldValue, false);

  if (fieldValue is! int) {
    throw ClientError("invalid_value", '$fieldName needs to be an integer');
  }

  if (checkPositive && fieldValue <= 0) {
    throw ClientError(
        "invalid_value", '$fieldName needs to be a positive integer');
  }
}

/**
 * Checks whether the input field value is an object or not
 * @export
 * @param {string} fieldName Field name to check for a value
 * @param {any} fieldValue Field value
 * @param {any} checkArray Flag to check whether the object is an array or not
 * @throws Throws an exception if `fieldValue` is not an object. If `checkArray=true`, throws an exception if `fieldValue` is also not an Array.
 */
void objectRequired(String fieldName, dynamic fieldValue,
    [bool checkArray = false]) {
  checkRequired(fieldName, fieldValue, false);

// TODO: dartta hersey bir objedir diye biliyorum. Bu herzam dogru cikar.
//   if (fieldValue is! Object) {
  if (fieldValue is String ||
      fieldValue is int ||
      fieldValue is double ||
      fieldValue is bool ||
      fieldValue is Function) {
    throw ClientError("invalid_value", '$fieldName needs to be an object');
  }

  if (fieldValue is List && checkArray) {
    throw ClientError("invalid_value", '$fieldName needs to be an array');
  }
}
// TODO: burada kaldim

//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
