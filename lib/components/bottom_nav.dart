import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  final String myString;

  const BottomNav({Key? key, required this.myString}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int active = 1;
  double iconSize = 84;

  Color getColor(int button) {
    return active == button ? Color(0xFF4CBC9A) : Color(0xFF979C9E);
  }

  void setActive(int button) {
    setState(() {
      active = button;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // Shadow color
            spreadRadius: 5, // Spread radius
            blurRadius: 7, // Blur radius
            offset: Offset(0, 5), // Offset
          ),
        ],
      ) ,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              setActive(0);
            },
            icon: Image.asset(
              "./assets/icons/home.png",
              color: getColor(0),
              width: iconSize,
              height: iconSize,
            ),
          ),
          IconButton(
            onPressed: () {
              setActive(1);
            },
            icon: Image.asset(
              "./assets/icons/contri.png",
              color: getColor(1),
              width: iconSize,
              height: iconSize,
            ),
          ),
          IconButton(
            onPressed: () {
              setActive(2);
            },
            icon: Image.asset(
              "./assets/icons/user.png",
              color: getColor(2),
              width: iconSize,
              height: iconSize,
            ),
          ),
        ],
      ),
    );
  }
}
