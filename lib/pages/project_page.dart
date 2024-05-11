import 'package:aasha/components/featured_card.dart';
import 'package:aasha/module/featured_card_model.dart';
import 'package:aasha/module/ngo_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectPage extends StatefulWidget {
  final NgoModel ngoModel;

  const ProjectPage({Key? key, required this.ngoModel}) : super(key: key);

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

  final List<Featured> demo = [
    Featured(
        handle: "dhatripatra",
        handleUrl: "./assets/images/logo.png",
        imgUrl: "./assets/images/home_top.png",
        title: "Empowering hearts to end hunger, one donation at a time",
        uid: "fehfiu3ggug2f9udg9ug"),
    Featured(
        handle: "dhatripatra",
        handleUrl: "./assets/images/logo.png",
        imgUrl: "./assets/images/home_top.png",
        title: "fcre hearts to end hunger, one donation at a time",
        uid: "fehfiu3ggug2f9udg9ug"),
    Featured(
        handle: "dhatripatra",
        handleUrl: "./assets/images/logo.png",
        imgUrl: "./assets/images/home_top.png",
        title: "Empowering hearts to end hunger, one donation at a time",
        uid: "fehfiu3ggug2f9udg9ug"),
  ];

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
                  this.widget.ngoModel.name,
                  style: GoogleFonts.prompt(
                      color: Color(0xFF4CBC9A),
                      fontSize: 32,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  this.widget.ngoModel.location,
                  style: GoogleFonts.prompt(
                      fontSize: 14, fontWeight: FontWeight.w200),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  this.widget.ngoModel.description,
                  style: GoogleFonts.prompt(
                      fontSize: 14, fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 16,
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
                  height: 32,
                ),
                Text(
                  "Seeking Investment",
                  style: GoogleFonts.ramabhadra(
                    fontSize: 24,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 350,
                  child: ListView(
                    // This next line does the trick.
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      for (int i = 0; i < demo.length; i++)
                        FeaturedCard(feature: demo[i])
                    ],
                  ),
                ),
                SizedBox(
                  height: 48,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Text(
                        "Contact us",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 32,
                            color: Color(0xFF4CBC9A)),
                      ),
                      Text(
                        "Get in touch with us through...",
                        style: GoogleFonts.poppins(
                            fontSize: 16, color: Color(0xFFC9C9C9)),
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      Container(
                          width: 48,
                          height: 48,
                          child: Image.asset(
                            "./assets/icons/phone.png",
                            fit: BoxFit.contain,
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        this.widget.ngoModel.mobile,
                        style: GoogleFonts.poppins(
                            fontSize: 18, color: Color(0xFF4CBC9A)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                          width: 48,
                          height: 48,
                          child: Image.asset(
                            "./assets/icons/email.png",
                            fit: BoxFit.contain,
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        this.widget.ngoModel.email,
                        style: GoogleFonts.poppins(
                            fontSize: 18, color: Color(0xFF4CBC9A)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                          width: 48,
                          height: 48,
                          child: Image.asset(
                            "./assets/icons/location.png",
                            fit: BoxFit.contain,
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        this.widget.ngoModel.location,
                        style: GoogleFonts.poppins(
                            fontSize: 18, color: Color(0xFF4CBC9A)),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 400,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                width: 48,
                                height: 48,
                                child: Image.asset(
                                  "./assets/icons/twitter.png",
                                  fit: BoxFit.contain,
                                )),
                            Container(
                                width: 48,
                                height: 48,
                                child: Image.asset(
                                  "./assets/icons/insta.png",
                                  fit: BoxFit.contain,
                                )),
                            Container(
                                width: 48,
                                height: 48,
                                child: Image.asset(
                                  "./assets/icons/fb.png",
                                  fit: BoxFit.contain,
                                )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                    ],
                  ),
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
                  this.widget.ngoModel.ngo_image_url,
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
                            this.widget.ngoModel.ngo_image_url,
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
