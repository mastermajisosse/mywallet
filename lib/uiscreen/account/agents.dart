import 'package:easy_localization/easy_localization.dart';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mywallet/utils/mystyle.dart';
import 'package:mywallet/utils/size_config.dart';

class AgentsP extends StatefulWidget {
  @override
  _AgentsPState createState() => _AgentsPState();
}

class _AgentsPState extends State<AgentsP> {
  Completer<GoogleMapController> _comtroller = Completer();

  static const LatLng _center =
      const LatLng(37.42796133580664, -122.085749655962);

  final Set<Marker> _marker = {};
  LatLng _lastMapPosition = _center;
  MapType _currentMapType = MapType.normal;

  _onMapCreated(GoogleMapController controller) {
    _comtroller.complete(controller);
  }

  _onCameraMove(CameraPosition position) {
    _lastMapPosition = position.target;
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var data = EasyLocalizationProvider.of(context).data;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Mystyle.secondrycolo,
          title: Text("agents").tr(),
          centerTitle: true,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Icon(Icons.add_circle_outline, size: 28),
            ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            indicatorWeight: 4,
            unselectedLabelColor: Colors.white.withOpacity(.5),
            labelStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            tabs: [Tab(text: 'allagents'.tr()), Tab(text: 'nearagents'.tr())],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            body1(context),
            // body1(context),
            body2(context),
          ],
        ),
      ),
    );
  }

  body1(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth,
      height: SizeConfig.screenHeight,
      child: Stack(
        children: <Widget>[
          GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: _center,
              zoom: 14.4746,
            ),
            mapType: _currentMapType,
            markers: _marker,
            onCameraMove: _onCameraMove,
          ),
        ],
      ),
    );
  }

  body2(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth,
      height: SizeConfig.screenHeight,
      child: Stack(
        children: <Widget>[
          GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: _center,
              zoom: 14.4746,
            ),
            mapType: _currentMapType,
            markers: _marker,
            onCameraMove: _onCameraMove,
          ),
        ],
      ),
    );
  }
}
