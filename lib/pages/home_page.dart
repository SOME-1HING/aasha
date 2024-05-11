import 'package:aasha/components/bottom_nav.dart';
import 'package:aasha/components/top_story.dart';
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

  @override
  void initState() {
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
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Image(
              image: AssetImage(
                "./assets/images/home_top.png",
              ),
              opacity: const AlwaysStoppedAnimation(.5),
              width: MediaQuery.of(context).size.width,
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
                panelBuilder: () {
                  return Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).padding.top + kToolbarHeight,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 26.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                          onTap: () {},
                                          child: Container(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Image.asset(
                                                  "./assets/icons/menu/menu1.png",
                                                  width: 50,
                                                  height: 50,
                                                  fit: BoxFit.contain,
                                                ),
                                                Text(
                                                  "All",
                                                  style: GoogleFonts.roboto(
                                                      fontSize: 16,
                                                      color: Color(0xFF9CA5BB)),
                                                )
                                              ],
                                            ),
                                          )),
                                      InkWell(
                                          onTap: () {},
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
                                                  style: GoogleFonts.roboto(
                                                      fontSize: 16,
                                                      color: Color(0xFF9CA5BB)),
                                                )
                                              ],
                                            ),
                                          )),
                                      InkWell(
                                          onTap: () {},
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
                                                  style: GoogleFonts.roboto(
                                                      fontSize: 16,
                                                      color: Color(0xFF9CA5BB)),
                                                )
                                              ],
                                            ),
                                          )),
                                      InkWell(
                                          onTap: () {},
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
                                                  style: GoogleFonts.roboto(
                                                      fontSize: 16,
                                                      color: Color(0xFF9CA5BB)),
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
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 26.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "Top Stories",
                                      style: GoogleFonts.ramabhadra(
                                        fontSize: 24,
                                      ),
                                    ),
                                    Text(
                                      "View all",
                                      style: GoogleFonts.roboto(
                                          fontSize: 16,
                                          color: Color(0xFF4CBC9A)),
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
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Featured goals",
                                style: GoogleFonts.ramabhadra(
                                  fontSize: 24,
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 200,
                                child: ListView(
                                  // This next line does the trick.
                                  scrollDirection: Axis.horizontal,
                                  children: <Widget>[
                                    Container(
                                      width: 160,
                                      color: Colors.red,
                                    ),
                                    Container(
                                      width: 160,
                                      color: Colors.blue,
                                    ),
                                    Container(
                                      width: 160,
                                      color: Colors.green,
                                    ),
                                    Container(
                                      width: 160,
                                      color: Colors.yellow,
                                    ),
                                    Container(
                                      width: 160,
                                      color: Colors.orange,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                color: const Color(0xFFFFFFFF)),
            Container(
              padding:
                  EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        color: isPanelOpen ? Colors.black : Colors.white,
                        "./assets/icons/menu.png",
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          isNotification = !isNotification;
                        });
                      },
                      icon: Image.asset(
                        color: isPanelOpen ? Colors.black : Colors.white,
                        isNotification
                            ? "./assets/icons/notifi2.png"
                            : "./assets/icons/notifi1.png",
                        scale: 0.7,
                      ),
                    ),
                  ]),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey,
      bottomNavigationBar: BottomNav(myString: "ds"),
    );
  }
}
