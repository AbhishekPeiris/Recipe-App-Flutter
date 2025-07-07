import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/constants.dart';
import 'package:flutter_application_1/widgets/banner.dart';
import 'package:flutter_application_1/widgets/my_icon_button.dart';
import 'package:iconsax/iconsax.dart';

class MyAppHomeScreen extends StatefulWidget {
  const MyAppHomeScreen({super.key});

  @override
  State<MyAppHomeScreen> createState() => _MyAppHomeScreenState();
}

class _MyAppHomeScreenState extends State<MyAppHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(children: [
                headerParts(), 
                mySearchBar(),
                BannerToExplore(),
              ]),
            ),
          ],
        ),
      ),
    );
  }

  Padding mySearchBar() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 22),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          prefixIcon: const Icon(Iconsax.search_normal, color: Colors.grey),
          fillColor: Colors.white,
          border: InputBorder.none,
          hintText: "Search any recipes",
          hintStyle: const TextStyle(color: Colors.grey),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  Row headerParts() {
    return Row(
      children: [
        Text(
          "What are you looking today",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            height: 1,
          ),
        ),
        const Spacer(),
        MyIconButton(icon: Iconsax.notification, pressed: () {}),
      ],
    );
  }
}
