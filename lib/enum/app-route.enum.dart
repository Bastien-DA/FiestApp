enum AppRoute {
  home(name: 'home', path: '/'),
  profil(name: 'profile', path: '/profile'),
  details(name: 'details', path: '/details'),
  notification(name: 'notification', path: '/notification');

  final String name;
  final String path;

  const AppRoute({required this.name, required this.path});
}
