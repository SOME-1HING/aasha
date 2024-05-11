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
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ProjectPage(
                          projModel: ProjectModel(
                        projectId: "3re24243242",
                        projectName: "feegrfgreg",
                        projectUrl: "fergfe.com",
                        projectDescription:
                            'Working as a professional in India involves huge responsibilities. For example, a person who has recently joined as a newcomer will take time to understand the dynamics of salary, the tax structure, monthly/yearly deductions, etc. At the same time, a person who has been working for a long time will surely have much more knowledge about the basics of this but might not be up to date in terms of knowing all the current financial conditions in the industry.\nNow, the people stuck in both categories, require some outside assistance to not prevent themselves from any sort of fraud in terms of investment, buying numerous policies through different agents, and getting scammed with their savings. This digital innovation is a very important thing but at the same time, it gives a very big platform to defaulters to ruin the mental peace of hardworking employees and play with their hard-earned money. In all this, the Insurance sector is one major thing.\nMedical policies or education policies are important aspects that an individual thinks about buying as it is substantial for emergency cases. ‘Insurance Samadhan’ is an online space that will guide you through this hectic insurance scheme and policy with trust.',
                        projectBackdrop: "./assets/images/home_top.png",
                        ngoId: "ferfe3r3",
                        ngoName: "f38YG*GF*7g2",
                        ngoDp: "./assets/images/logo.png",
                      ))));
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  width: 300,
                  height: 150,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
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
                        child: Image.asset(
                          fit: BoxFit.cover,
                          "./assets/images/cuss.png",
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
