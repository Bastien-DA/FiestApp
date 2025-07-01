import 'package:fiestapp/components/button/icon-button.component.dart';
import 'package:fiestapp/components/details/event-data.component.dart';
import 'package:fiestapp/mock/event.mock.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';
import 'package:permission_handler/permission_handler.dart';

class EventDetailsWithMap extends StatefulWidget {
  final bool isMapExpanded;
  final VoidCallback onExpandToggle;

  const EventDetailsWithMap({
    super.key,
    required this.isMapExpanded,
    required this.onExpandToggle,
  });

  @override
  State<EventDetailsWithMap> createState() => _EventDetailsWithMapState();
}

class _EventDetailsWithMapState extends State<EventDetailsWithMap> {
  MapboxMap? _mapboxMap;
  bool _mapInitialized = false;

  final CameraOptions camera = CameraOptions(
    center: Point(
      coordinates: Position(mockEvent.longitude, mockEvent.latitute),
    ),
    zoom: 15,
    bearing: 0,
    pitch: 0,
  );

  @override
  void dispose() {
    _mapboxMap = null;
    super.dispose();
  }

  void _onMapCreated(MapboxMap mapboxMap) async {
    try {
      _mapboxMap = mapboxMap;

      await Future.delayed(const Duration(milliseconds: 100));
      if (!mounted) return;

      await mapboxMap.scaleBar.updateSettings(ScaleBarSettings(enabled: false));

      await _requestLocationPermission();

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

      final pointAnnotationManager = await mapboxMap.annotations
          .createPointAnnotationManager();

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
      final ByteData bytes = await rootBundle.load('assets/marker.png');
      final Uint8List imageData = bytes.buffer.asUint8List();

      await manager.create(
        PointAnnotationOptions(
          geometry: Point(
            coordinates: Position(mockEvent.longitude, mockEvent.latitute),
          ),
          image: imageData,
          iconSize: 0.8,
        ),
      );
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

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        if (!widget.isMapExpanded) EventData(event: mockEvent),
        SafeArea(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
            width: double.infinity,
            height: widget.isMapExpanded
                ? MediaQuery.of(context).size.height * 0.77
                : 200,
            child: Stack(
              children: [
                MapWidget(
                  key: const ValueKey('stable-mapbox-map'),
                  textureView: false,
                  cameraOptions: camera,
                  onMapCreated: _onMapCreated,
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: CustomIconButton(
                    icon: FontAwesomeIcons.upRightAndDownLeftFromCenter,
                    backgroundColor: Colors.black.withOpacity(0.2),
                    iconColor: Colors.white,
                    onClick: widget.onExpandToggle,
                  ),
                ),
                if (!_mapInitialized)
                  Container(
                    color: Colors.grey.shade200,
                    child: const Center(child: CircularProgressIndicator()),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
