import 'package:aasha/components/featured_card.dart';
import 'package:aasha/components/ngo_card.dart';
import 'package:aasha/components/top_story.dart';
import 'package:aasha/module/featured_card_model.dart';
import 'package:aasha/module/ngo_model.dart';
import 'package:aasha/module/project_model.dart';
import 'package:aasha/pages/about_page.dart';
import 'package:aasha/pages/animal_page.dart';
import 'package:aasha/pages/education_page.dart';
import 'package:aasha/pages/faq_page.dart';
import 'package:aasha/pages/health_page.dart';
import 'package:aasha/pages/top_story_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sliding_up_panel2/sliding_up_panel2.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isNotification = false;
  late bool isPanelOpen;
  late final PanelController panelController;
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  String currActivePage = "Home";
  int active = 0;

  Color getColor(int button) {
    return active == button ? Color(0xFF4CBC9A) : Color(0xFF979C9E);
  }

  void setActive(int button) {
    setState(() {
      active = button;
    });
  }

  late List<NgoModel> ngoList = [];
  late List<ProjectModel> projList = [];

  Future<void> getDb() async {
    List<ProjectModel> li = [];
    List<NgoModel> pi = [];

    var db = FirebaseFirestore.instance;

    await db.collection("projects").get().then((event) {
      for (var doc in event.docs) {
        var data = doc.data();
        var x = ProjectModel(
            projectId: doc.id,
            projectName: data["projectName"],
            projectUrl: data["projectUrl"],
            projectDescription: data["projectDescription"],
            projectBackdrop: data["projectBackdrop"],
            ngoId: data["ngoId"],
            ngoName: data["ngoName"],
            ngoDp: data["ngoDp"]);

        li.add(x);
      }

      setState(() {
        projList = li;
      });
    });
    await db.collection("ngos").get().then((event) {
      for (var doc in event.docs) {
        var data = doc.data();

        var x = NgoModel(
            ngo_image_url: data["ngoDp"],
            name: data["ngoName"],
            location: data["ngoLocation"],
            description: data["ngoDescription"],
            mobile: data["ngoMobile"],
            email: data["ngoEmail"],
            ngo_website: data["ngoWebsite"],
            twitter_url: data["ngoTwitter"],
            insta_url: data["ngoInsta"],
            fb_url: data["ngoFb"],
            uid: data["ngoDp"],
            projects: (data["ngoProject"] as String).split(","));

        pi.add(x);
      }

      setState(() {
        ngoList = pi;
      });
    });
  }

  @override
  void initState() {
    getDb();

    setState(() {
      panelController = PanelController();
      isPanelOpen = false;
    });
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.black,
        systemNavigationBarIconBrightness: Brightness.light));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: (active == 0)
            ? Stack(
                children: [
                  Image(
                    image: AssetImage(
                      "./assets/images/home_top.png",
                    ),
                    opacity: const AlwaysStoppedAnimation(.5),
                    width: MediaQuery.of(context).size.width,
                    height: 400,
                    fit: BoxFit.cover,
                  ),
                  SlidingUpPanel(
                      onPanelOpened: () {
                        setState(() {
                          isPanelOpen = true;
                        });
                      },
                      onPanelClosed: () {
                        setState(() {
                          isPanelOpen = false;
                        });
                      },
                      minHeight: MediaQuery.of(context).size.height - 300,
                      maxHeight: MediaQuery.of(context).size.height,
                      borderRadius: isPanelOpen
                          ? BorderRadius.zero
                          : const BorderRadius.only(
                              topRight: Radius.circular(32),
                              topLeft: Radius.circular(32)),
                      controller: panelController,
                      header: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ForceDraggableWidget(
                              child: SizedBox(
                                width: 100,
                                height: 40,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const SizedBox(
                                      height: 12.0,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                          width: 30,
                                          height: 7,
                                          decoration: const BoxDecoration(
                                              color: Colors.blueAccent,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(12.0))),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      panelBuilder: () {
                        return Padding(
                          padding: EdgeInsets.only(
                            top: MediaQuery.of(context).padding.top +
                                kToolbarHeight,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 36.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            InkWell(
                                                onTap: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              EducationPage()));
                                                },
                                                child: Container(
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Image.asset(
                                                        "./assets/icons/menu/menu2.png",
                                                        width: 50,
                                                        height: 50,
                                                        fit: BoxFit.contain,
                                                      ),
                                                      Text(
                                                        "Education",
                                                        style:
                                                            GoogleFonts.roboto(
                                                                fontSize: 16,
                                                                color: Color(
                                                                    0xFF9CA5BB)),
                                                      )
                                                    ],
                                                  ),
                                                )),
                                            InkWell(
                                                onTap: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              HealthPage()));
                                                },
                                                child: Container(
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Image.asset(
                                                        "./assets/icons/menu/menu3.png",
                                                        width: 50,
                                                        height: 50,
                                                        fit: BoxFit.contain,
                                                      ),
                                                      Text(
                                                        "Health",
                                                        style:
                                                            GoogleFonts.roboto(
                                                                fontSize: 16,
                                                                color: Color(
                                                                    0xFF9CA5BB)),
                                                      )
                                                    ],
                                                  ),
                                                )),
                                            InkWell(
                                                onTap: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              AnimalPage()));
                                                },
                                                child: Container(
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Image.asset(
                                                        "./assets/icons/menu/menu4.png",
                                                        width: 50,
                                                        height: 50,
                                                        fit: BoxFit.contain,
                                                      ),
                                                      Text(
                                                        "Animals",
                                                        style:
                                                            GoogleFonts.roboto(
                                                                fontSize: 16,
                                                                color: Color(
                                                                    0xFF9CA5BB)),
                                                      )
                                                    ],
                                                  ),
                                                ))
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 14,
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: ListView(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 26.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            "Top Stories",
                                            style: GoogleFonts.ramabhadra(
                                              fontSize: 24,
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          TopStoryPage()));
                                            },
                                            child: Text(
                                              "View all",
                                              style: GoogleFonts.roboto(
                                                  fontSize: 16,
                                                  color: Color(0xFF4CBC9A)),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    TopStory(),
                                    SizedBox(
                                      height: 14,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 16),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Seeking Investment",
                                            style: GoogleFonts.ramabhadra(
                                              fontSize: 24,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 12,
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 350,
                                            child: ListView(
                                              scrollDirection: Axis.horizontal,
                                              children: (projList.isNotEmpty)
                                                  ? List.generate(
                                                      projList.length,
                                                      (index) => FeaturedCard(
                                                          feature:
                                                              projList[index]),
                                                    ).toList()
                                                  : [
                                                      Center(
                                                          child:
                                                              CircularProgressIndicator())
                                                    ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 80,
                              )
                            ],
                          ),
                        );
                      },
                      color: const Color(0xFFFFFFFF)),
                  Container(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).viewPadding.top),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              _key.currentState!.openDrawer();
                            },
                            icon: Image.asset(
                              color: isPanelOpen ? Colors.black : Colors.white,
                              "./assets/icons/menu.png",
                            ),
                          ),
                        ]),
                  ),
                ],
              )
            : (active == 1)
                ? Stack(
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
                                  Container(
                                    padding: EdgeInsets.only(top: 20),
                                    width: MediaQuery.of(context).size.width,
                                    height: 200,
                                    child: ListView.separated(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: ngoList.length,
                                      separatorBuilder: (context, index) =>
                                          Container(
                                              width: 25,
                                              height: 100,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    height: 150,
                                                    width: 2,
                                                    color: Color(0xFF4CBC9A)
                                                        .withOpacity(0.45),
                                                  )
                                                ],
                                              )), // Adjust separator width as needed
                                      itemBuilder: (context, index) {
                                        return NgoCard(
                                          ngoModel: ngoList[index],
                                        );
                                      },
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
                                  Container(
                                    padding: EdgeInsets.only(top: 20),
                                    width: MediaQuery.of(context).size.width,
                                    height: 200,
                                    child: ListView.separated(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: ngoList.length,
                                      separatorBuilder: (context, index) =>
                                          Container(
                                              width: 25,
                                              height: 100,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    height: 150,
                                                    width: 2,
                                                    color: Color(0xFF4CBC9A)
                                                        .withOpacity(0.45),
                                                  )
                                                ],
                                              )), // Adjust separator width as needed
                                      itemBuilder: (context, index) {
                                        return NgoCard(
                                          ngoModel: ngoList[index],
                                        );
                                      },
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
                                color: Colors.grey
                                    .withOpacity(0.5), // Shadow color
                                spreadRadius: 5, // Spread radius
                                blurRadius: 7, // Blur radius
                                offset: Offset(0, 2), // Offset
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(36))),
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).viewPadding.top),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              IconButton(
                                onPressed: () {
                                  _key.currentState!.openDrawer();
                                },
                                icon: Image.asset(
                                  color: Colors.black,
                                  "./assets/icons/menu.png",
                                ),
                              ),
                              Text(
                                "Discover",
                                style: GoogleFonts.prompt(
                                    fontSize: 32,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF54BF9F)),
                              )
                            ]),
                      ),
                    ],
                  )
                : Stack(
                    children: [],
                  ),
      ),
      backgroundColor: Colors.grey,
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        height: 60,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 6),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5), // Shadow color
              spreadRadius: 5, // Spread radius
              blurRadius: 7, // Blur radius
              offset: Offset(0, 5), // Offset
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                setActive(0);
              },
              icon: Image.asset(
                "./assets/icons/home.png",
                color: getColor(0),
                width: 84,
                height: 84,
              ),
            ),
            IconButton(
              onPressed: () {
                setActive(1);
              },
              icon: Image.asset(
                "./assets/icons/contri.png",
                color: getColor(1),
                width: 84,
                height: 84,
              ),
            ),
            IconButton(
              onPressed: () {
                setActive(2);
              },
              icon: Image.asset(
                "./assets/icons/user.png",
                color: getColor(2),
                width: 84,
                height: 84,
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(topRight: Radius.circular(50))),
        backgroundColor: Color(0xD94CBC9A),
        child: Padding(
          padding: EdgeInsets.only(
              left: 40,
              top: kToolbarHeight + MediaQuery.of(context).padding.top),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(14),
                    onTap: () {},
                    splashColor: Colors.white.withOpacity(0.5),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: (currActivePage == "Home")
                            ? Colors.white.withOpacity(0.3)
                            : Colors.transparent,
                      ),
                      padding: EdgeInsets.only(left: 10),
                      alignment: Alignment.centerLeft,
                      height: 60,
                      width: 200,
                      child: Text(
                        "Home",
                        style: GoogleFonts.prompt(
                            fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 200,
                    child: Divider(
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(14),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AboutPage()));
                    },
                    splashColor: Colors.white.withOpacity(0.5),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: (currActivePage == "About Us")
                            ? Colors.white.withOpacity(0.3)
                            : Colors.transparent,
                      ),
                      padding: EdgeInsets.only(left: 10),
                      alignment: Alignment.centerLeft,
                      height: 60,
                      width: 200,
                      child: Text(
                        "About Us",
                        style: GoogleFonts.prompt(
                            fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 200,
                    child: Divider(
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(14),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => FAQPage()));
                    },
                    splashColor: Colors.white.withOpacity(0.5),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: (currActivePage == "Help & FAQ")
                            ? Colors.white.withOpacity(0.3)
                            : Colors.transparent,
                      ),
                      padding: EdgeInsets.only(left: 10),
                      alignment: Alignment.centerLeft,
                      height: 60,
                      width: 200,
                      child: Text(
                        "Help & FAQ",
                        style: GoogleFonts.prompt(
                            fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
            ),
          ]),
        ),
      ),
    );
  }
}
