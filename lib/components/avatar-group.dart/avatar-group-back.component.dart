import 'package:fiestapp/types.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AvatarGroupBack extends ConsumerWidget {
  const AvatarGroupBack({super.key, required this.users});

  final List<User> users;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final maxAvatars = 3;
    final displayUsers = users.take(maxAvatars).toList();

    return Container(
      decoration: BoxDecoration(
        color: Colors.black.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          spacing: 5,
          children: [
            // Avatars
            SizedBox(
              height: 30,
              width: 20 * displayUsers.length + 10,
              child: Stack(
                children: List.generate(displayUsers.length, (index) {
                  final user = displayUsers[index];
                  return Positioned(
                    left: index * 18, // superposition contrôlée
                    child: CircleAvatar(
                      radius: 15,
                      backgroundImage: NetworkImage(
                        user.ppLink ??
                            'https://avatar.iran.liara.run/public', // image par défaut
                      ),
                    ),
                  );
                }),
              ),
            ),
            Text(
              "${users.length} participant${users.length == 1 ? '' : 's'}",
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
