
import 'package:flutter/material.dart';
import 'package:rentcars/presentation/screens/map_details/widgets/icon_feature.dart';

class FeaturedIcons extends StatelessWidget {
  const FeaturedIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TFeaturedIcon(
            icon: Icons.local_gas_station,
            title: "Diesel",
            subtitle: "Common Rail"),
        TFeaturedIcon(
            icon: Icons.speed,
            title: "Acceleration",
            subtitle: "0 - 100km / s"),
        TFeaturedIcon(
            icon: Icons.ac_unit, title: "Cold", subtitle: "Temp Control"),
      ],
    );
  }
}