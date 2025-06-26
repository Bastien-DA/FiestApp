import 'package:fiestapp/components/details/event-data.component.dart';
import 'package:fiestapp/components/header/details/details_header.component.dart';
import 'package:fiestapp/mock/event.mock.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';
import 'package:permission_handler/permission_handler.dart';

class Details extends ConsumerStatefulWidget {
  const Details({super.key});

  @override
  DetailState createState() => DetailState();
}

class DetailState extends ConsumerState<Details> {
  CameraOptions camera = CameraOptions(
    center: Point(
      coordinates: Position(mockEvent.longitude, mockEvent.latitute),
    ),
    zoom: 15,
    bearing: 0,
    pitch: 0,
  );

  void _onMapCreated(MapboxMap mapboxMap) async {
    await mapboxMap.scaleBar.updateSettings(ScaleBarSettings(enabled: false));

    // Demander la permission de localisation
    await _requestLocationPermission();

    // Activer la localisation de l'utilisateur
    await mapboxMap.location.updateSettings(
      LocationComponentSettings(
        enabled: true,
        puckBearingEnabled: true, // Affiche la direction
        pulsingEnabled: true, // Animation pulsante
        showAccuracyRing: true, // Cercle de précision
      ),
    );

    PointAnnotationManager pointAnnotationManager = await mapboxMap.annotations
        .createPointAnnotationManager();

    // Load the image from assets
    final ByteData bytes = await rootBundle.load('assets/marker.png');
    final Uint8List imageData = bytes.buffer.asUint8List();

    // Create a PointAnnotationOptions
    PointAnnotationOptions pointAnnotationOptions = PointAnnotationOptions(
      geometry: Point(coordinates: Position(-0.56667, 44.833328)),
      // Example coordinates
      image: imageData,
      iconSize: 0.8,
    );

    // Add the annotation to the map
    pointAnnotationManager.create(pointAnnotationOptions);
  }

  Future<void> _requestLocationPermission() async {
    var status = await Permission.locationWhenInUse.request();
    if (status.isDenied) {
      // Gérer le cas où la permission est refusée
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Permission de localisation nécessaire pour afficher votre position',
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F1F7),
      body: Column(
        spacing: 10,
        children: [
          DetailsHeader(),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                EventData(event: mockEvent),
                Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  width: double.infinity,
                  height: 200,
                  child: MapWidget(
                    cameraOptions: camera,
                    onMapCreated: _onMapCreated,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
