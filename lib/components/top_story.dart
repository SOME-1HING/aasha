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
    return Container(
      width: MediaQuery.of(context).size.width - 52,
      height: 200,
      decoration: BoxDecoration(
          color: Color(0xFFFBFDFF),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(width: 1, color: Color(0xFFE2EFFF))),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width - 52 - 16 - 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Heading",
                    style: GoogleFonts.ramabhadra(
                      fontSize: 22,
                    ),
                  ),
                  Text(
                    "An inspirational individual who triumphed with resilience, winning a gold medal in the Paralympic Games.",
                    style: GoogleFonts.prompt(fontSize: 12),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 48,
                        height: 48,
                        child: ClipOval(
                          child: Image.asset(
                            fit: BoxFit.cover,
                            "./assets/images/home_top.png",
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "dhatripatra",
                        style: GoogleFonts.prompt(fontSize: 16),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              width: 135,
              height: 175,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  fit: BoxFit.cover,
                  "./assets/images/home_top.png",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
