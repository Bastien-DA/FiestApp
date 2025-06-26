import 'dart:ui';

import 'package:fiestapp/components/header/home/top-home-header.component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeHeader extends ConsumerWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Flexible(
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/ImageSoiree.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          width: double.infinity,
          height: MediaQuery
              .sizeOf(context)
              .height / 2.9,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
            child: Container(
                color: Color(0xFFE15B42).withValues(alpha: 0.3),
                // 50% de transparence              child: Center(
                child: TopHomeHeader(name: "Marikatou")
            ),
          ),
        ),
      ),
    );
  }
}
