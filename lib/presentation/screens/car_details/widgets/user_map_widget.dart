import 'package:flutter/material.dart';
import 'package:rentcars/data/models/car.dart';
import 'package:rentcars/images.dart';
import 'package:rentcars/presentation/screens/car_details/widgets/user_info.dart';
import 'package:rentcars/presentation/screens/map_details/map_details_screen.dart';

class UserAndMapWidget extends StatefulWidget {
  const UserAndMapWidget({
    super.key,
    required this.car,
  });
  final Car car;

  @override
  State<UserAndMapWidget> createState() => _UserAndMapWidgetState();
}

class _UserAndMapWidgetState extends State<UserAndMapWidget>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _animation;

  @override
  void initState() {
    _controller =
        AnimationController(duration: const Duration(seconds: 3), vsync: this);
    _animation = Tween<double>(begin: 1, end: 1.5).animate(_controller!)
      ..addListener(() {
        setState(() {});
      });
    _controller!.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          const Expanded(child: UserInfo()),
          const SizedBox(width: 20),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            MapDetailsScreen(car: widget.car)));
              },
              child: Container(
                height: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black12, blurRadius: 10, spreadRadius: 5),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Transform.scale(
                    scale: _animation!.value,
                    alignment: Alignment.center,
                    child: Image.asset(TImages.mapsImage, fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
