import 'dart:async';

import 'package:fiestapp/api/auth.service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum AuthStatus { loading, authenticated, unauthenticated }

class UserState {
  final AuthStatus status;

  const UserState._({required this.status});

  factory UserState.loading() => UserState._(status: AuthStatus.loading);
  factory UserState.authenticated() => UserState._(status: AuthStatus.authenticated);
  factory UserState.unauthenticated() => UserState._(status: AuthStatus.unauthenticated);

  bool get isLoading => status == AuthStatus.loading;
  bool get isAuthenticated => status == AuthStatus.authenticated;
}

class UserStateNotifier extends StateNotifier<UserState> {
  final _controller = StreamController<UserState>.broadcast();

  UserStateNotifier() : super(UserState.loading()) {
    _checkFingerprintAuth();
  }

  Stream<UserState> get stream => _controller.stream;

  void _emit(UserState newState) {
    state = newState;
    _controller.add(newState);
  }

  Future<void> _checkFingerprintAuth() async {
    try {
      final hasAccount = await AuthService.checkFingerprintAccount();
      print("Has account: $hasAccount");

      if (hasAccount) {
        print("Account found, setting state to authenticated");
        _emit(UserState.authenticated());
      } else {
        print("No account found, setting state to unauthenticated");
        _emit(UserState.unauthenticated());
      }

      // Debug: Print the actual current state
      print("Current state after auth check: ${state.status}");

    } catch (e) {
      print("Error during auth check: $e");
      print("Setting state to unauthenticated due to error");
      _emit(UserState.unauthenticated());
      print("Current state after error: ${state.status}");
    }
  }

  void login() {
    print("Manual login triggered");
    _emit(UserState.authenticated());
  }

  void logout() {
    print("Manual logout triggered");
    _emit(UserState.unauthenticated());
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }
}

final userStateNotifierProvider = StateNotifierProvider<UserStateNotifier, UserState>((ref) {
  return UserStateNotifier();
});