import 'package:flutter/material.dart';
import 'package:rentcars/images.dart';
import 'package:rentcars/presentation/screens/home/home_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2c2b34),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(TImages.onboardingImage),
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Premium cars. \nEnjoy the luxury",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Premium and prestige car daily rental. \nExperience the thrill at a lower price",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: 320,
                  height: 54,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen()),
                            (route) => false);
                      },
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.white),
                      child: const Text("Let's Go",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold))),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
