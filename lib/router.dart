import 'package:fiestapp/pages/add-event.page.dart';
import 'package:fiestapp/pages/details.page.dart';
import 'package:fiestapp/pages/home.page.dart';
import 'package:fiestapp/pages/notification.page.dart';
import 'package:fiestapp/pages/profil.page.dart';
import 'package:flutter/material.dart' hide Notification;
import 'package:go_router/go_router.dart';

import 'enum/app-route.enum.dart';

GoRouter router = GoRouter(
  initialLocation: AppRoute.home.path,
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
    GoRoute(
      path: AppRoute.notification.path,
      name: AppRoute.notification.name,
      builder: (BuildContext context, GoRouterState state) {
        return const Notification();
      },
    ),
    GoRoute(
      path: AppRoute.addEvent.path,
      name: AppRoute.addEvent.name,
      builder: (BuildContext context, GoRouterState state) {
        return const AddEvent(); // Placeholder for add event page
      },
    ),
  ],
);
