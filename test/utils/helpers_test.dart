import 'package:altogic_dart/utils/client_error.dart';
import 'package:altogic_dart/utils/helpers.dart';
import 'package:test/test.dart';

void main() {
  test('removeTrailingSlash', () {
    final _url = 'https://test.com/abc/';
    final _urlExpected = 'https://test.com/abc';

    final _result = removeTrailingSlash(_url);

    expect(_result, _urlExpected);
  });

  test('normalizeUrl', () {
    final _url = 'https://test.com/abc/   ';
    final _urlExpected = 'https://test.com/abc';

    final _result = normalizeUrl(_url);

    expect(_result, _urlExpected);
  });

  test('getParamValue', () {
    final _paramName = 'paramName';
    final _paramValue = '100';

    final _url =
        'https://test.com/abc/?abc=345&$_paramName=$_paramValue&hl#3344';

    final _result = getParamValue(_paramName, urlForTesting: _url);

    expect(_result, _paramValue);
  });

  test('checkRequired', () {
    var fieldName = null;
    var fieldValue = '100';

    try {
      checkRequired(fieldName, fieldValue);
    } on ClientError catch (e) {
      expect(e.code, "missing_required_value");
      return;
    }

    fieldName = 'name';
    fieldValue = '';
    try {
      checkRequired(fieldName, fieldValue);
    } on ClientError catch (e) {
      expect(e.code, "missing_required_value");
      return;
    }

    fieldName = 'name';
    fieldValue = '';
    try {
      checkRequired(fieldName, fieldValue, true);
    } on ClientError catch (e) {
      expect(e.code, "missing_required_value");
      return;
    }

    fieldValue = '   ';
    try {
      checkRequired(fieldName, fieldValue);
    } on ClientError catch (e) {
      expect(e.code, "missing_required_value");
      return;
    }
  });

  test('arrayRequired', () {
    var fieldName = 'name';
    var fieldValue = '';

    try {
      arrayRequired(fieldName, fieldValue);
    } on ClientError catch (e) {
      expect(e.code, "invalid_value");
      return;
    }

    try {
      checkRequired(fieldName, [], true);
    } on ClientError catch (e) {
      expect(e.code, "emtpy_array");
      return;
    }
  });

  test('integerRequired', () {
    var fieldName = 'name';
    var fieldValue = '';

    try {
      arrayRequired(fieldName, fieldValue);
    } on ClientError catch (e) {
      expect(e.code, "invalid_value");
      return;
    }

    try {
      checkRequired(fieldName, -2, true);
    } on ClientError catch (e) {
      expect(e.code, "invalid_value");
      return;
    }
  });
  // TODO: asagidaki test yazilacak.
}

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
//
//
//
//
