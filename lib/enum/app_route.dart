enum AppRoute {
  home(name: 'home', path: '/'),
  profil(name: 'profile', path: '/profile');

  final String name;
  final String path;
  const AppRoute({required this.name, required this.path});
}