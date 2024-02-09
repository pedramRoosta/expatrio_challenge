import 'package:dio/dio.dart';
import 'package:ex_app/service/secure_storage.dart';
import 'package:ex_app/user/models/user/user.dart';
import 'package:ex_app/user/models/user_tax_data/user_tax_data.dart';
import 'package:get_it/get_it.dart';

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
  Future<UserTaxData> userTaxData({
    required int userId,
  });
}

class UserService extends IUserService {
  final storageService = GetIt.I.get<ISecureStorageService>();

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
    storageService.write(
        key: SecureStorageKey.token.key,
        value: response.data['accessToken'] as String);
    return user;
  }

  @override
  Future<UserTaxData> userTaxData({required int userId}) async {
    final token = await storageService.read(key: SecureStorageKey.token.key);
    dio.options.headers['content-Type'] = 'application/json';
    dio.options.headers["authorization"] = "Bearer $token";
    var response = await dio.get(
      'v3/customers/$userId/tax-data',
    );
    final userTaxData =
        UserTaxData.fromJson(response.data as Map<String, dynamic>);
    return userTaxData;
  }
}
