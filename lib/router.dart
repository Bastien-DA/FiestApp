import 'package:fiestapp/pages/home.dart';
import 'package:fiestapp/pages/profil.dart';
import 'package:fiestapp/pages/details.page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'enum/app_route.dart';

GoRouter router = GoRouter(
  initialLocation: AppRoute.details.path,
  routes: [
    GoRoute(
      path: AppRoute.home.path,
      name: AppRoute.home.name,
      builder: (BuildContext context, GoRouterState state) {
        return const Home();
      },
    ),
    GoRoute(
      path: AppRoute.profil.path,
      name: AppRoute.profil.name,
      builder: (BuildContext context, GoRouterState state) {
        return const Profil();
      },
    ),
    GoRoute(
      path: AppRoute.details.path,
      name: AppRoute.details.name,
      builder: (BuildContext context, GoRouterState state) {
        return const Details();
      },
    ),
  ]
);

