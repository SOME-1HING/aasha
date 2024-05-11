import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HealthPage extends StatefulWidget {
  const HealthPage({super.key});

  @override
  State<HealthPage> createState() => _HealthPageState();
}

class _HealthPageState extends State<HealthPage> {
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
              children: [
                SizedBox(
                  height: 180,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Top Communities",
                        style: GoogleFonts.prompt(
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "Discover top communities of this week",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w300,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Local Organizations",
                        style: GoogleFonts.prompt(
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "Get to know the organization nearest to you...",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w300,
                          fontSize: 14,
                        ),
                      ),
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
                    fontSize: 32,
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
