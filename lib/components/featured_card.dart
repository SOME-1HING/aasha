import 'package:aasha/module/featured_card_model.dart';
import 'package:aasha/module/project_model.dart';
import 'package:aasha/pages/ngo_profile.dart';
import 'package:aasha/pages/project_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeaturedCard extends StatefulWidget {
  final ProjectModel feature;
  const FeaturedCard({Key? key, required this.feature}) : super(key: key);

  @override
  State<FeaturedCard> createState() => _FeaturedCardState();
}

class _FeaturedCardState extends State<FeaturedCard> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ProjectPage(
                        projModel: this.widget.feature,
                      )));
        },
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
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  width: 300,
                  height: 150,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.network(
                        this.widget.feature.projectBackdrop,
                        fit: BoxFit.cover,
                      ))),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  children: [
                    Container(
                      width: 36,
                      height: 36,
                      child: ClipOval(
                        child: Image.network(
                          fit: BoxFit.cover,
                          this.widget.feature.ngoDp,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      this.widget.feature.ngoName,
                      style: GoogleFonts.prompt(fontSize: 16),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    this.widget.feature.projectName,
                    style: GoogleFonts.prompt(fontSize: 14),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "Read More...",
                      style: GoogleFonts.prompt(
                          fontSize: 12, color: Color(0xFF4CBC9A)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                    alignment: Alignment.center,
                    width: 300,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Color(0xFF4CBC9A),
                        borderRadius: BorderRadius.circular(8)),
                    child: Text(
                      "Join the Cause",
                      style: GoogleFonts.poppins(
                          fontSize: 18, color: Colors.white),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
