import 'package:fiestapp/provider/auth.provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GoRouterRefreshNotifier extends ChangeNotifier {
  GoRouterRefreshNotifier(this.ref) {
    ref.listen<bool>(authProvider, (previous, next) => notifyListeners());
  }

  final Ref ref;
}
