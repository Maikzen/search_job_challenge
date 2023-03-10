// Mocks generated by Mockito 5.1.0 from annotations
// in template/test/tests/splash/splash_controller_test.dart.
// Do not manually edit this file.

import 'package:mockito/mockito.dart' as _i1;
import 'package:job_search_challenge/src/contracts/info_device_interface.dart' as _i5;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

/// A class which mocks [InfoDeviceInterface].
///
/// See the documentation for Mockito's code generation for more information.
class MockInfoDeviceInterface extends _i1.Mock
    implements _i5.InfoDeviceInterface {
  MockInfoDeviceInterface() {
    _i1.throwOnMissingStub(this);
  }

  @override
  String getVersionApp() => (super
          .noSuchMethod(Invocation.method(#getVersionApp, []), returnValue: '')
      as String);
  @override
  String getBuildNumberApp() =>
      (super.noSuchMethod(Invocation.method(#getBuildNumberApp, []),
          returnValue: '') as String);
}
