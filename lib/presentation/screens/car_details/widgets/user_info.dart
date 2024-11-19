import 'package:flutter/material.dart';
import 'package:rentcars/images.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
          CircleAvatar(
              radius: 40, backgroundImage: AssetImage(TImages.userImage)),
          const SizedBox(height: 10),
          const Text("Mohamed Emad",
              style: TextStyle(fontWeight: FontWeight.bold)),
          const Text("\$4,253", style: TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}
