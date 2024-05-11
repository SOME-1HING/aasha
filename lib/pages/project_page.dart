import 'package:aasha/components/featured_card.dart';
import 'package:aasha/module/featured_card_model.dart';
import 'package:aasha/module/ngo_model.dart';
import 'package:aasha/module/project_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectPage extends StatefulWidget {
  final ProjectModel projModel;

  const ProjectPage({Key? key, required this.projModel}) : super(key: key);

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
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
      body: Stack(children: [
        SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                top: kToolbarHeight + MediaQuery.of(context).padding.top + 150,
                left: 20,
                right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  this.widget.projModel.projectName,
                  style: GoogleFonts.prompt(
                      color: Color(0xFF4CBC9A),
                      fontSize: 32,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(16),
                  onTap: () {},
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: ClipRRect(
                      child: Image.asset(
                        "./assets/images/cause.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  this.widget.projModel.projectDescription,
                  style: GoogleFonts.prompt(
                      fontSize: 14, fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 32,
                ),
                SizedBox(
                  height: 48,
                ),
                SizedBox(
                  height: 100,
                )
              ],
            ),
          ),
        ),
        Container(
          height: 300,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                child: Image.asset(
                  this.widget.projModel.projectBackdrop,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 120,
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      Container(
                        width: 128,
                        height: 128,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(128),
                            border:
                                Border.all(width: 2, color: Color(0xFF4CBC9A))),
                        child: ClipOval(
                          child: Image.asset(
                            this.widget.projModel.ngoDp,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: 20, top: MediaQuery.of(context).padding.top),
          child: InkWell(
            borderRadius: BorderRadius.circular(56),
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(56)),
                width: 56,
                height: 56,
                child: Icon(
                  Icons.keyboard_arrow_left,
                  size: 38,
                  color: Color(0xFF4CBC9A),
                )),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ),
      ]),
      backgroundColor: Colors.white,
    );
  }
}
