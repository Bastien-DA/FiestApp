import 'package:fiestapp/components/home/header/home-header.component.dart';
import 'package:fiestapp/components/home/next-event/next-event.component.dart';
import 'package:fiestapp/components/home/participation/you-participate.component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Color(0xffF4F1F7),
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          HomeHeader(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 35),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: NextEvent(),
                  ),
                  SizedBox(height: 35),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: YouParticipate(),
                  ),
                  SizedBox(height: 35),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
