import 'package:dio/dio.dart';
import 'package:ex_app/user/models/user.dart';

abstract class IUserService {
  static const String _baseUrl = 'https://dev-api.expatrio.com/';
  final dio = Dio(
    BaseOptions(
      baseUrl: _baseUrl,
      headers: {
        'Content-Type': 'application/json',
      },
    ),
  );
  Future<User> login({
    required String email,
    required String password,
  });
}

class UserService extends IUserService {
  @override
  Future<User> login({
    required String email,
    required String password,
  }) async {
    var response = await dio.post(
      'auth/login',
      data: {
        'email': email,
        'password': password,
      },
    );
    final user =
        User.fromJson(response.data['subject'] as Map<String, dynamic>);
    return user;
  }
}
