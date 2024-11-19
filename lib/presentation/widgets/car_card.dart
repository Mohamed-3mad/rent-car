import 'package:flutter/material.dart';
import 'package:rentcars/data/models/car.dart';
import 'package:rentcars/images.dart';
import 'package:rentcars/presentation/screens/car_details/car_details.dart';
import 'package:rentcars/presentation/widgets/car_info.dart';

class CarCard extends StatelessWidget {
  const CarCard({super.key, required this.car});

  final Car car;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => CarDetailsScreen(car: car,)));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: const Color(0xfff3f3f3),
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(color: Colors.black12, blurRadius: 10, spreadRadius: 5),
          ],
        ),
        child: Column(
          children: [
            Image.asset(TImages.carImage, height: 120),
            Text(car.model,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CarInformation(
                    car: car, text: "${car.distance.toStringAsFixed(0)}km"),
                CarInformation(
                    car: car, text: "${car.fuelCapacity.toStringAsFixed(0)}L"),
                Text("\$${car.pricePerHour.toStringAsFixed(0)}/h",
                    style: const TextStyle(fontSize: 16)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
