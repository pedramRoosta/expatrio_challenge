import 'package:flutter_secure_storage/flutter_secure_storage.dart';

enum SecureStorageKey {
  token('token'),
  refreshToken('refreshToken');

  const SecureStorageKey(this.key);
  final String key;
}

abstract class ISecureStorageService {
  Future<void> write({
    required String key,
    required String value,
  });
  Future<String> read({required String key});
  Future<void> delete({required String key});
}

class SecureStorageService implements ISecureStorageService {
  SecureStorageService({required FlutterSecureStorage secureStorage})
      : _secureStorage = secureStorage;

  final FlutterSecureStorage _secureStorage;

  @override
  Future<void> write({
    required String key,
    required String value,
  }) async {
    await _secureStorage.write(key: key, value: value);
  }

  @override
  Future<String> read({
    required String key,
  }) async {
    return await _secureStorage.read(key: key) ?? '';
  }

  @override
  Future<void> delete({
    required String key,
  }) async {
    await _secureStorage.delete(key: key);
  }
}
