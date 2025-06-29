import 'package:fiestapp/api/user-service.dart';
import 'package:fiestapp/utils/types/user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CurrentUserNotifier extends StateNotifier<User?> {
  final Ref ref;
  final userServiceProvider = Provider((ref) => UserService());

  CurrentUserNotifier(this.ref) : super(null) {
    getCurrentUser();
  }

  void getCurrentUser() {
    final userService = ref.read(userServiceProvider);
    final data = userService.getCurrentUser();
    state = data;
  }
}

final userProvider = StateNotifierProvider<CurrentUserNotifier, User?>(
  (ref) => CurrentUserNotifier(ref),
);
