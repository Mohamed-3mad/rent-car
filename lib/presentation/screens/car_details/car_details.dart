import 'package:flutter/material.dart';
import 'package:rentcars/data/models/car.dart';
import 'package:rentcars/presentation/screens/car_details/widgets/user_map_widget.dart';
import 'package:rentcars/presentation/widgets/car_card.dart';
import 'package:rentcars/presentation/widgets/more_card.dart';

class CarDetailsScreen extends StatefulWidget {
  const CarDetailsScreen({super.key, required this.car});

  final Car car;

  @override
  State<CarDetailsScreen> createState() => _CarDetailsScreenState();
}

class _CarDetailsScreenState extends State<CarDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new)),
        backgroundColor: Colors.white,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.info_outline),
            SizedBox(width: 5),
            Text("Information"),
          ],
        ),
      ),
      body: Column(
        children: [
          CarCard(
              car: Car(
                  model: widget.car.model,
                  distance: widget.car.distance,
                  fuelCapacity: widget.car.fuelCapacity,
                  pricePerHour: widget.car.pricePerHour)),
          const SizedBox(height: 20),
          UserAndMapWidget(car: widget.car),
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                MoreCard(
                    car: Car(
                        model: "${widget.car.model} -1 ",
                        distance: widget.car.distance + 100,
                        fuelCapacity: widget.car.fuelCapacity + 100,
                        pricePerHour: widget.car.pricePerHour + 10)),
                const SizedBox(height: 5),
                MoreCard(
                    car: Car(
                        model: "${widget.car.model} -2",
                        distance: widget.car.distance + 200,
                        fuelCapacity: widget.car.fuelCapacity + 200,
                        pricePerHour: widget.car.pricePerHour + 20)),
                const SizedBox(height: 5),
                MoreCard(
                    car: Car(
                        model: "${widget.car.model} -3",
                        distance: widget.car.distance + 300,
                        fuelCapacity: widget.car.fuelCapacity + 300,
                        pricePerHour: widget.car.pricePerHour + 30)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
