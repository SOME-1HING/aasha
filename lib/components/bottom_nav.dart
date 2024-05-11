import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  final String myString;

  const BottomNav({Key? key, required this.myString}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  final IconDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.all(Radius.circular(10)),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 60,
      color: Colors.red,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        InkWell(
            onTap: () {},
            child: Container(
              child: Icon(Icons.home),
              decoration: IconDecoration,
            )),
        InkWell(
            onTap: () {},
            child: Container(
              child: Icon(Icons.healing),
              decoration: IconDecoration,
            )),
        InkWell(
            onTap: () {},
            child: Container(
              child: Icon(Icons.person),
              decoration: IconDecoration,
            )),
      ]),
    );
  }
}
