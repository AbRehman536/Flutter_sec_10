import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapDemo extends StatelessWidget {
   GoogleMapDemo({super.key});

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  Set<Marker> markers = {
    Marker(
      markerId: MarkerId("1"),
      position: LatLng(33.5848, 73.0658),
      infoWindow: InfoWindow(title: "Rawalpindi"),
    ),
    Marker(
      markerId: MarkerId("2"),
      position: LatLng(33.5848, 73.0651),
      infoWindow: InfoWindow(title: "Islamabad"),
    ),
    Marker(
      markerId: MarkerId("3"),
      position: LatLng(33.5848, 73.0654),
      infoWindow: InfoWindow(title: "Lahore"),
    ),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Google Map"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: GoogleMap(
        mapType: MapType.hybrid,
        markers: markers,
          initialCameraPosition: 
          CameraPosition(
              target: LatLng(33.5848, 73.0658),
              zoom: 20,
          ),
        zoomGesturesEnabled: true,
        zoomControlsEnabled: true,
        onMapCreated: (GoogleMapController controller){
          _controller.complete(controller);
        },
      ),
    );
  }
}
