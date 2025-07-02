import 'dart:async';

import 'package:fiestapp/pages/add-event.page.dart';
import 'package:fiestapp/pages/details.page.dart';
import 'package:fiestapp/pages/home.page.dart';
import 'package:fiestapp/pages/invitation.page.dart';
import 'package:fiestapp/pages/loading.page.dart';
import 'package:fiestapp/pages/notification.page.dart';
import 'package:fiestapp/pages/profil.page.dart';
import 'package:fiestapp/pages/register.page.dart';
import 'package:fiestapp/provider/user-state.provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'enum/app-route.enum.dart';

class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(Stream<dynamic> stream) {
    _subscription = stream.listen((_) {
      print("🔄 GoRouter refresh triggered by stream");
      notifyListeners();
    });
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}

final router = Provider<GoRouter>((ref) {
  // Écouter les changements d'état utilisateur
  final userState = ref.watch(userStateNotifierProvider);
  final userStateNotifier = ref.read(userStateNotifierProvider.notifier);

  // Créer un GoRouterRefreshStream qui écoute le stream du UserStateNotifier
  final refreshStream = GoRouterRefreshStream(userStateNotifier.stream);

  return GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: true,
    refreshListenable: refreshStream,
    routes: [
      GoRoute(
        path: AppRoute.home.path,
        name: AppRoute.home.name,
        builder: (context, state) => const Home(),
      ),
      GoRoute(
        path: '/loading',
        name: 'loading',
        builder: (context, state) => const LoadingScreen(),
      ),
      GoRoute(
        path: AppRoute.profil.path,
        name: AppRoute.profil.name,
        builder: (context, state) => const Profil(),
      ),
      GoRoute(
        path: AppRoute.details.path,
        name: AppRoute.details.name,
        builder: (context, state) => const Details(),
      ),
      GoRoute(
        path: "${AppRoute.invitation.path}/:id",
        name: AppRoute.invitation.name,
        builder: (context, state) {
          final id = state.pathParameters['id']!;
          return Invitation(id: id);
        },
      ),
      GoRoute(
        path: AppRoute.addEvent.path,
        name: AppRoute.addEvent.name,
        builder: (context, state) => const AddEvent(),
      ),
      GoRoute(
        path: AppRoute.register.path,
        name: AppRoute.register.name,
        builder: (context, state) => const Register(),
      ),
    ],
    redirect: (context, state) {
      final current = state.fullPath;
      final isLoading = userState.isLoading;
      final isAuth = userState.isAuthenticated;

      print('🔄 REDIRECT CHECK:');
      print('   Current route: $current');
      print('   Auth status: ${userState.status}');
      print('   Is loading: $isLoading');
      print('   Is authenticated: $isAuth');

      // Si on est en train de charger, rediriger vers loading
      if (isLoading) {
        print('   → Redirecting to loading screen');
        return current != '/loading' ? '/loading' : null;
      }

      // Si on vient de finir de charger, rediriger vers la bonne page
      if (current == '/loading') {
        final destination = isAuth ? AppRoute.home.path : AppRoute.register.path;
        print('   → Leaving loading screen, redirecting to: $destination');
        return destination;
      }

      // Si pas authentifié et pas sur la page d'inscription
      if (!isAuth && current != AppRoute.register.path) {
        print('   → Not authenticated, redirecting to register');
        return AppRoute.register.path;
      }

      // Si authentifié mais sur la page d'inscription
      if (isAuth && current == AppRoute.register.path) {
        print('   → Authenticated but on register page, redirecting to home');
        return AppRoute.home.path;
      }

      print('   → No redirect needed');
      return null;
    },
  );
});