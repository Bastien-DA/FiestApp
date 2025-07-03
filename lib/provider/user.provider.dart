import 'package:fiestapp/api/user-service.dart';
import 'package:openapi/openapi.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CurrentUserNotifier extends StateNotifier<User?> {
  final Ref ref;
  final userService = UserService();

  CurrentUserNotifier(this.ref) : super(null) {
    getCurrentUser();
  }

  Future<void> getCurrentUser() async {
    final data = await userService.getCurrentUser();
    state = data;
  }

  void clear() {
    state = null;
  }
}

final userProvider = StateNotifierProvider<CurrentUserNotifier, User?>(
  (ref) => CurrentUserNotifier(ref),
);
