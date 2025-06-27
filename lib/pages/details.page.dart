import 'package:fiestapp/components/details/event-data.component.dart';
import 'package:fiestapp/components/details/organisation.component.dart';
import 'package:fiestapp/components/header/details/details_header.component.dart';
import 'package:fiestapp/components/icon-button/icon_button.component.dart';
import 'package:fiestapp/components/page-switcher/page-switcher.component.dart';
import 'package:fiestapp/mock/event.mock.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';
import 'package:permission_handler/permission_handler.dart';

class Details extends ConsumerStatefulWidget {
  const Details({super.key});

  @override
  DetailState createState() => DetailState();
}

class DetailState extends ConsumerState<Details> {
  MapboxMap? _mapboxMap;
  bool _mapInitialized = false;
  bool isMapExpanded = false;
  int currentPage = 0;

  CameraOptions camera = CameraOptions(
    center: Point(
      coordinates: Position(mockEvent.longitude, mockEvent.latitute),
    ),
    zoom: 15,
    bearing: 0,
    pitch: 0,
  );

  void ExpandMap() {
    setState(() {
      isMapExpanded = !isMapExpanded;
    });
  }

  void _onMapCreated(MapboxMap mapboxMap) async {
    try {
      _mapboxMap = mapboxMap;

      // Wait a frame to ensure the map is fully rendered
      await Future.delayed(const Duration(milliseconds: 100));

      if (!mounted) return;

      await mapboxMap.scaleBar.updateSettings(ScaleBarSettings(enabled: false));

      // Request location permission
      await _requestLocationPermission();

      // Enable user location with error handling
      try {
        await mapboxMap.location.updateSettings(
          LocationComponentSettings(
            enabled: true,
            puckBearingEnabled: true,
            pulsingEnabled: true,
            showAccuracyRing: true,
          ),
        );
      } catch (e) {
        debugPrint('Location settings error: $e');
      }

      // Create annotation manager
      PointAnnotationManager pointAnnotationManager = await mapboxMap
          .annotations
          .createPointAnnotationManager();

      // Load and add marker
      await _addMarker(pointAnnotationManager);

      setState(() {
        _mapInitialized = true;
      });
    } catch (e) {
      debugPrint('Map initialization error: $e');
    }
  }

  Future<void> _addMarker(PointAnnotationManager manager) async {
    try {
      // Load the image from assets
      final ByteData bytes = await rootBundle.load('assets/marker.png');
      final Uint8List imageData = bytes.buffer.asUint8List();

      // Create a PointAnnotationOptions
      PointAnnotationOptions pointAnnotationOptions = PointAnnotationOptions(
        geometry: Point(coordinates: Position(-0.56667, 44.833328)),
        image: imageData,
        iconSize: 0.8,
      );

      // Add the annotation to the map
      await manager.create(pointAnnotationOptions);
    } catch (e) {
      debugPrint('Marker creation error: $e');
    }
  }

  Future<void> _requestLocationPermission() async {
    try {
      var status = await Permission.locationWhenInUse.request();
      if (status.isDenied && mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'Permission de localisation nécessaire pour afficher votre position',
            ),
          ),
        );
      }
    } catch (e) {
      debugPrint('Permission request error: $e');
    }
  }

  void changePage(int index) {
    setState(() {
      currentPage = index;
    });
  }

  @override
  void dispose() {
    _mapboxMap = null;
    super.dispose();
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
                      : Column(
                          spacing: 10,
                          children: [
                            if (!isMapExpanded) EventData(event: mockEvent),
                            SafeArea(
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 200),
                                curve: Curves.easeInOut,
                                clipBehavior: Clip.hardEdge,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                width: double.infinity,
                                height: isMapExpanded
                                    ? MediaQuery.of(context).size.height *
                                          0.77 // 78% de la hauteur d'écran quand expansé
                                    : 200,
                                child: Stack(
                                  children: [
                                    MapWidget(
                                      key: const ValueKey('stable-mapbox-map'),
                                      textureView: false,
                                      // Changed to false to reduce buffer issues
                                      cameraOptions: camera,
                                      onMapCreated: _onMapCreated,
                                    ),
                                    Positioned(
                                      bottom: 10,
                                      right: 10,
                                      child: CustomIconButton(
                                        icon: FontAwesomeIcons
                                            .upRightAndDownLeftFromCenter,
                                        backgroundColor: Colors.black
                                            .withValues(alpha: 0.2),
                                        iconColor: Colors.white,
                                        onClick: ExpandMap,
                                      ),
                                    ),
                                    if (!_mapInitialized)
                                      Container(
                                        color: Colors.grey.shade200,
                                        child: const Center(
                                          child: CircularProgressIndicator(),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          ],
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
