import 'package:fiestapp/pages/add-event.page.dart';
import 'package:fiestapp/pages/details.page.dart';
import 'package:fiestapp/pages/home.page.dart';
import 'package:fiestapp/pages/invitation.page.dart';
import 'package:fiestapp/pages/loading.page.dart';
import 'package:fiestapp/pages/profil.page.dart';
import 'package:fiestapp/pages/register.page.dart';
import 'package:fiestapp/provider/auth.provider.dart';
import 'package:fiestapp/provider/router-refresh.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'enum/app-route.enum.dart';

final routerProvider = Provider<GoRouter>((ref) {
  // Écouter les changements d'état utilisateur
  final isLoggedIn = ref.watch(authProvider);

  return GoRouter(
    initialLocation: AppRoute.home.path,
    debugLogDiagnostics: true,
    refreshListenable: GoRouterRefreshNotifier(ref),
    // redirect: (context, state) {
    //   final goingToRegister = state.uri.path == AppRoute.register.path;
    //   final goingToHome = state.uri.path == AppRoute.home.path;
    //
    //   if (!isLoggedIn) {
    //     if (!goingToRegister) {
    //       return AppRoute.register.path;
    //     }
    //   } else {
    //     if (goingToRegister) {
    //       return AppRoute.home.path;
    //     }
    //   }

      // return null;
    // },
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
  );
});
