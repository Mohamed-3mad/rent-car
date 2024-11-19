import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:rentcars/data/models/car.dart';
import 'package:rentcars/presentation/screens/map_details/widgets/car_info_map.dart';

class MapDetailsScreen extends StatelessWidget {
  const MapDetailsScreen({super.key, required this.car});

  final Car car;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: const MapOptions(
              initialCenter: LatLng(26.8206, 30.8025),
              initialZoom: 6.0,
            ),
            children: [
              TileLayer(
                urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
                // subdomains: const ['a', 'b', 'c'],
              ),
            ],
          ),
          Positioned(bottom: 0, left: 0, right: 0, child: CarInfoMap(car: car)),
        ],
      ),
    );
  }
}
