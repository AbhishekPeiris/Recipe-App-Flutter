import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/constants.dart';

class BannerToExplore extends StatelessWidget {
  const BannerToExplore({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: kBannerColor,
      ),
      child: Stack(
        children: [
          Positioned(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Cook the best\n recipes at home",
                  style: TextStyle(
                    height: 1.1,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Explore", style: TextStyle(fontSize: 15)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
