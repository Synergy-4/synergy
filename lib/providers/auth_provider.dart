import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/auth_models.dart';
import '../core/utility.dart';

part 'auth_provider.g.dart';

@riverpod
class Auth extends _$Auth {
  @override
  Future<UserModel?> build() async {
    final result = await ApiClient.instance.get('/users/me');
    if (result is ApiSuccess) {
      return UserModel.fromJson(result as Map<String, dynamic>);
    }
    return null;
  }

  Future<bool> updateProfile({required String fullName}) async {
    final result = await ApiClient.instance.patch(
      '/users/me',
      body: {'full_name': fullName},
    );

    if (result is ApiSuccess) {
      ref.invalidateSelf();
      await future;
      return true;
    }
    return false;
  }
}
