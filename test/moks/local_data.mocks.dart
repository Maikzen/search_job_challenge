// Mocks generated by Mockito 5.1.0 from annotations
// in template/test/splash/splash_controller_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i3;

import 'package:mockito/mockito.dart' as _i1;
import 'package:job_search_challenge/src/contracts/local_data_interface.dart' as _i2;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

/// A class which mocks [LocalDataInterface].
///
/// See the documentation for Mockito's code generation for more information.
class MockLocalDataInterface extends _i1.Mock
    implements _i2.LocalDataInterface {
  MockLocalDataInterface() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<String?> getToken() =>
      (super.noSuchMethod(Invocation.method(#getToken, []),
          returnValue: Future<String?>.value()) as _i3.Future<String?>);
  @override
  _i3.Future<bool> setToken(String? token) =>
      (super.noSuchMethod(Invocation.method(#setToken, [token]),
          returnValue: Future<bool>.value(false)) as _i3.Future<bool>);
  @override
  _i3.Future<bool> clearAllData() =>
      (super.noSuchMethod(Invocation.method(#clearAllData, []),
          returnValue: Future<bool>.value(false)) as _i3.Future<bool>);
}
