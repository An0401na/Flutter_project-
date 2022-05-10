import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GoogleMap'),
        ),
        body: MapSample(),
      ),
    ),
  );
}

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  List<Marker> myMarker = [];

  //현재 위치 받아오기
  double a = 0.0;
  double b = 0.0;

  getLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    print(position.latitude);
    print(position.longitude);
    a = position.latitude;
    b = position.longitude;
  }

  Future<void> postPosition(double lat, double lon) async {
    try {
      final _url = Uri.parse('http://203.249.22.50:8080/noa');
      http
          .post(_url, headers: <String, String>{
            'Content-Type': 'application/x-www-form-urlencoded',
          }, body: {
            "latitude": lat.toString(),
            "longitude": lon.toString()
          })
          .then((res) => print(json.decode(res.body.toString())))
          .catchError((e) => print(e.toString()));
      print("noah");
    } catch (error) {
      print('에러' + error.toString());
    }
  }

  @override
  void initState() {
    getLocation();
    super.initState();
    myMarker.add(Marker(markerId: MarkerId("first"), position: LatLng(a, b)));
  }

  //찍으곳에 마커 찍고 위경도값 출력
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: 500,
      height: 500,
      child: GoogleMap(
        initialCameraPosition: CameraPosition(target: LatLng(a, b), zoom: 14.0),
        markers: Set.from(myMarker),
        onTap: _handleTap,
      ),
    ));
  }

  _handleTap(LatLng tappedPoint) {
    double lat = tappedPoint.latitude;
    double lon = tappedPoint.longitude;
    print(lat);
    print(lon);
    postPosition(lat, lon);

    setState(() {
      myMarker = [];
      myMarker.add(Marker(
        markerId: MarkerId(tappedPoint.toString()),
        position: tappedPoint,
      ));
    });
  }
}
