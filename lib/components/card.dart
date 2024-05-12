import 'package:aasha/module/donation_model.dart';
import 'package:aasha/module/featured_card_model.dart';
import 'package:aasha/module/project_model.dart';
import 'package:aasha/pages/ngo_profile.dart';
import 'package:aasha/pages/project_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewCard extends StatefulWidget {
  final DonationModel feature;
  const NewCard({Key? key, required this.feature}) : super(key: key);

  @override
  State<NewCard> createState() => _NewCardState();
}

class _NewCardState extends State<NewCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0, bottom: 10),
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.all(8),
          width: 325,
          height: 300,
          decoration: BoxDecoration(
              color: Color(0xFFFBFDFF),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                width: 1,
                color: Color(0xFFE2EFFF),
              )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  width: 300,
                  height: 150,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        this.widget.feature.donation_img,
                        fit: BoxFit.cover,
                      ))),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                  children: [
                    Text(
                      this.widget.feature.title,
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        children: [
                          Container(
                            width: 36,
                            height: 36,
                            child: ClipOval(
                              child: Image.asset(
                                fit: BoxFit.cover,
                                this.widget.feature.org_img,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            this.widget.feature.org,
                            style: GoogleFonts.prompt(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
