
import 'package:flutter/material.dart';
import 'package:rentcars/data/models/car.dart';
import 'package:rentcars/images.dart';
import 'package:rentcars/presentation/screens/map_details/widgets/featured_icons.dart';

class CarInfoMap extends StatelessWidget {
  const CarInfoMap({
    super.key,
    required this.car,
  });
  final Car car;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black38, spreadRadius: 0, blurRadius: 10),
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Text(car.model,
                    style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const Icon(Icons.directions_car,
                        color: Colors.white, size: 14),
                    const SizedBox(width: 5),
                    Text("> ${car.distance} km",
                        style:
                            const TextStyle(color: Colors.white, fontSize: 14)),
                    const SizedBox(width: 10),
                    const Icon(Icons.battery_full,
                        color: Colors.white, size: 14),
                    const SizedBox(width: 5),
                    Text("${car.fuelCapacity}",
                        style:
                            const TextStyle(color: Colors.white, fontSize: 14)),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Features",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  const FeaturedIcons(),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("\$${car.pricePerHour}/day",
                          style: const TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold)),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black),
                          child: const Text(
                            "Book Now",
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
              top: 50, right: 30, child: Image.asset(TImages.whiteCarImage)),
        ],
      ),
    );
  }
}
