import 'package:aasha/components/bottom_nav.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isNotification = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset(
            "./assets/icons/menu.png",
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(

              isNotification?
              "./assets/icons/notifi2.png":"./assets/icons/notifi1.png" ,
              scale: 0.7,
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.black,

      bottomNavigationBar: BottomNav(myString: "ds"),
    );
  }
}
