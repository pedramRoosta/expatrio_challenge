import 'package:ex_app/service/secure_storage.dart';
import 'package:ex_app/service/user_service.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';

class ServiceLocator {
  static void setup() {
    const secureStorage = FlutterSecureStorage();
    GetIt.I.registerSingleton<ISecureStorageService>(
      SecureStorageService(secureStorage: secureStorage),
    );
    GetIt.I.registerSingleton<IUserService>(UserService());
  }
}
