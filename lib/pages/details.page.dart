import 'package:fiestapp/components/details/event-data-with-map.dart';
import 'package:fiestapp/components/header/details/details_header.component.dart';
import 'package:fiestapp/components/page-switcher/page-switcher.component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../components/organisation/organisation-bloc.component.dart';

class Details extends ConsumerStatefulWidget {
  const Details({super.key});

  @override
  DetailState createState() => DetailState();
}

class DetailState extends ConsumerState<Details> {
  bool isMapExpanded = false;
  int currentPage = 0;

  void ExpandMap() {
    setState(() {
      isMapExpanded = !isMapExpanded;
    });
  }

  void changePage(int index) {
    setState(() {
      currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(15),
          child: PageSwitcher(
            onPageChanged: changePage,
            currentPage: 0,
            firstPage: 'Informations',
            secondPage: 'Organisation',
          ),
        ),
        backgroundColor: const Color(0xffF4F1F7),
        body: SafeArea(
          top: false,
          child: Column(
            spacing: 10,
            children: [
              if (!isMapExpanded)
                DetailsHeader(
                  height:
                      MediaQuery.sizeOf(context).height /
                      (currentPage == 0 ? 3 : 3.8),
                ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: AnimatedSwitcher(
                  duration: Duration(milliseconds: 200),
                  child: currentPage == 1
                      ? Organisation()
                      : EventDetailsWithMap(
                          isMapExpanded: isMapExpanded,
                          onExpandToggle: ExpandMap,
                        ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
