import 'package:job_search_challenge/src/contracts/auth_interface.dart';

class AuthService implements AuthInterface{
  @override
  Future<String> login() async {
    await Future.delayed(const Duration(seconds: 2));
    return 'token';
  }
}