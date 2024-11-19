
import 'package:flutter/material.dart';
import 'package:rentcars/data/models/car.dart';
import 'package:rentcars/images.dart';

class CarInformation extends StatelessWidget {
  const CarInformation({
    super.key,
    required this.car,
    required this.text,
  });

  final Car car;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(TImages.gpsImage),
        Text(text,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
      ],
    );
  }
}
