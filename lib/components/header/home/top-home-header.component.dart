import 'package:fiestapp/components/icon-button/profil-icon-button.component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TopHomeHeader extends ConsumerWidget {
  const TopHomeHeader({
    super.key,
    required this.name
  });

  final String name;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      minimum: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Bienvenue',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.white
                ),
              ),
              Text(
                name,
                style: const TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
          ProfilIconButton(imagePath: 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fpm1.narvii.com%2F6479%2Fd14cc25834ff36a45a29ecd0e9c7ec92021c96fd_hq.jpg&f=1&nofb=1&ipt=126ff8a7eaf3122eda206063efe488f8fd16990c30d9b4953ab709bbd47962a0')
        ],
      ),
    );
  }
}