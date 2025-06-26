import 'dart:ui';

import 'package:fiestapp/components/header/home/top_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeHeader extends ConsumerWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Flexible(
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/ImageSoiree.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          width: double.infinity,
          height: MediaQuery.sizeOf(context).height / 2.9,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              color: Colors.black.withOpacity(0.3), // Ajoutez votre couleur semi-transparente ici
              child: Center(
                child: TopHeader(name: "Marikatou")
              ),
            ),
          ),
        ),
      ),
    );
  }
}
