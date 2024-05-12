import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopStory extends StatefulWidget {
  const TopStory({Key? key}) : super(key: key);

  @override
  State<TopStory> createState() => _TopStoryState();
}

class _TopStoryState extends State<TopStory> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: MediaQuery.of(context).size.width - 52,
        height: 200,
        decoration: BoxDecoration(
            color: Color(0xFFFBFDFF),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(width: 1, color: Color(0xFFE2EFFF))),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width - 52 - 16 - 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Pune Based Savings Firm",
                      style: GoogleFonts.ramabhadra(
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "Dive Money: Savings at 9% Interest Rate by Anandu Nair & Diti Tanna, GenZ Building for GenZ. Welcome to the future of saving.",
                      style: GoogleFonts.prompt(fontSize: 12),
                    ),
                    Row(
                      children: [
                        Container(
                          width: 28,
                          height: 28,
                          child: ClipOval(
                            child: Image.asset(
                              fit: BoxFit.cover,
                              "./assets/icons/Dive.png",
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Dive",
                          style: GoogleFonts.prompt(fontSize: 16),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 125,
                height: 175,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    fit: BoxFit.cover,
                    "./assets/images/placeholder.png",
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
