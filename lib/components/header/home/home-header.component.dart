// ignore_for_file: unused_import

import 'dart:ui';

import 'package:fiestapp/components/header/home/top-home-header.component.dart';
import 'package:fiestapp/components/search-bar/generic-search-bar.component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeHeader extends ConsumerWidget {
  const HomeHeader({super.key});

  String search() {
    return "Rechercher";
  }

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
              .height / 3.8,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
            child: Container(
                color: Color(0xFFE15B42).withValues(alpha: 0.3),
                // 50% de transparence              child: Center(
                child: SafeArea(
                  minimum: const EdgeInsets.only(left: 10, right: 10, top: 45, bottom: 10),
                  bottom: false,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: TopHomeHeader(name: "Marikatou"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: GenericSearchBar(
                            icon: Icons.search,
                            placeholder: "Rechercher"
                        ),
                      )
                    ],
                  ),
                )
            ),
          ),
        ),
      ),
    );
  }
}
