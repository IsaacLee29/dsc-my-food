import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_food/map/addMarkerScreen.dart';

class MapMainScreen extends StatefulWidget {
  @override
  static const String idScreen = "mapMainScreen";

  _MapMainScreenState createState() => _MapMainScreenState();
}

class _MapMainScreenState extends State<MapMainScreen> {
  Completer<GoogleMapController> _controllerGoogleMap = Completer();
  GoogleMapController newGoogleMapController;

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(3.0649, 101.6009),
    zoom: 14.4746,
  );

  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId('id-1'),
          position: LatLng(3.0649, 101.6009),
          infoWindow: InfoWindow(
            title: "User Information",
            snippet: "Name: Google, Age: 18",

            // onTap: (){
            //   _showMyDialog();
            // }
            onTap: (){
              // _showMyDialog();
            }
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange[100],
          title: Text("Map"),
        ),
        body: Stack(
          children: [
            GoogleMap(
              markers: _markers,
              mapType: MapType.normal,
              myLocationButtonEnabled: true,
              initialCameraPosition: _kGooglePlex,
              onMapCreated: (GoogleMapController controller) {
                _onMapCreated(controller);
                _controllerGoogleMap.complete(controller);
                newGoogleMapController = controller;
              },
            ),
            Positioned(
              left: 0.0,
              right: 0.0,
              bottom: 0.0,
              child: Container(
                height: 120.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(18.0),
                    topLeft: Radius.circular(18.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 16.0,
                      offset: Offset(0.7, 0.7),
                      spreadRadius: 0.5,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AddMarkerScreen()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black54,
                                blurRadius: 6.0,
                                offset: Offset(0.7, 0.7),
                                spreadRadius: 0.5,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(Icons.add, color: Colors.blueAccent),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text("Add Location"),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("User Info"),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text("Name: Google"),
                Text("Age: 18"),
                Text("Gender: Male"),
                Text("Notes: Vegan"),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Done'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
