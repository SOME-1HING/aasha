import 'package:aasha/components/card.dart';
import 'package:aasha/module/donation_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class HealthPage extends StatefulWidget {
  const HealthPage({super.key});

  @override
  State<HealthPage> createState() => _HealthPageState();
}

class _HealthPageState extends State<HealthPage> {
  List<DonationModel> demo = [
    DonationModel(
        donation_img: "./assets/images/logo.png",
        title: "Help ensure a stable blood supply for those in need.",
        org: "Pheonix Medical Clinic",
        org_img: "./assets/images/logo.png",
        org_url: "fecfe.com",
        uid: "frefe"),
    DonationModel(
        donation_img: "./assets/images/logo.png",
        title: "Help ensure a stable blood supply for those in need.",
        org: "Pheonix Medical Clinic",
        org_img: "./assets/images/logo.png",
        org_url: "fecfe.com",
        uid: "frefe"),
    DonationModel(
        donation_img: "./assets/images/logo.png",
        title: "Help ensure a stable blood supply for those in need.",
        org: "Pheonix Medical Clinic",
        org_img: "./assets/images/logo.png",
        org_url: "fecfe.com",
        uid: "frefe"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 140,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height - 150,
                        width: MediaQuery.of(context).size.width,
                        child: ListView(
                          children: [
                            for (int i = 0; i < demo.length; i++)
                              NewCard(feature: demo[i])
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 150,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Shadow color
                    spreadRadius: 5, // Spread radius
                    blurRadius: 7, // Blur radius
                    offset: Offset(0, 2), // Offset
                  ),
                ],
                color: Colors.white,
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(36))),
            alignment: Alignment.topLeft,
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top),
            child:
                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.chevron_left,
                    color: Color(0xFFF78456),
                    size: 48,
                  )),
              Text(
                "Healing Hope",
                style: GoogleFonts.prompt(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFF78456)),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
