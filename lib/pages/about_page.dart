import 'package:aasha/components/card.dart';
import 'package:aasha/module/donation_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
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
                  height: 180,
                ),
                Expanded(
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Image.asset("./assets/images/logo.png"),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "AASHA",
                              style: GoogleFonts.poppins(
                                  color: Color(0xFF4CBC9A),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 48),
                            ),
                            Text(
                              "Active Assistance in Securing Hope for all",
                              style: GoogleFonts.poppins(fontSize: 14),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Welcome to Aasaha, where social impact meets innovation. Our mission is to connect socially conscious entrepreneurs, NGOs, and investors to drive positive change and foster sustainability worldwide.\n\nAt Aasaha, we believe in the power of collaboration and community to address pressing social challenges. Whether you're an entrepreneur with a vision for change, an NGO dedicated to making a difference, or an investor seeking impactful opportunities, our platform provides the tools and resources you need to make a difference.\n\nFounded on the principles of transparency, integrity, and social responsibility, Aasaha is committed to creating a more equitable and sustainable world. We strive to empower individuals and organizations to create lasting change and build a brighter future for generations to come.",
                              style: GoogleFonts.poppins(
                                color: Color(0xFF868889),
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
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
                color: Color(0xFF4CBC9A),
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
                    color: Colors.white,
                    size: 48,
                  )),
              Text(
                "About Us",
                style: GoogleFonts.prompt(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
