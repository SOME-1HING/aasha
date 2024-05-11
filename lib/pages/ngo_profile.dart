import 'package:aasha/module/ngo_model.dart';
import 'package:flutter/material.dart';

class NgoProfile extends StatefulWidget {
  final NgoModel ngoModel;

  const NgoProfile({Key? key, required this.ngoModel}) : super(key: key);

  @override
  State<NgoProfile> createState() => _NgoProfileState();
}

class _NgoProfileState extends State<NgoProfile> {
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
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          child: Icon(Icons.keyboard_arrow_left),
          onTap: () {},
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
