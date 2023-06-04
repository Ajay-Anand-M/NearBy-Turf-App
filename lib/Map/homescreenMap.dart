import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapHomeScreen extends StatefulWidget {
  const MapHomeScreen({Key? key}) : super(key: key);

  @override
  State<MapHomeScreen> createState() => _MapHomeScreenState();
}

class _MapHomeScreenState extends State<MapHomeScreen> {

  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGoolePlex = CameraPosition(
      target: LatLng(10.977982793268952, 76.20258821366387),
    zoom: 14,
  );

  List<Marker> _marker =[];
  List<Marker> _list = [
    Marker(markerId:MarkerId("1"),
    position: LatLng(10.983113399483441, 76.21179878358942),
    infoWindow: InfoWindow(
      title: "Seven’s Football Turf-Moulana college of pharmacy",
    ),)
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _marker.addAll(_list);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
          initialCameraPosition: _kGoolePlex,
        markers: Set<Marker>.of(_marker),
        mapType: MapType.normal,
        myLocationEnabled: true,
        myLocationButtonEnabled: true,
        onMapCreated: (GoogleMapController controller){
            _controller.complete(controller);
        },

      ),
    );
  }
}
