import 'package:aasha/components/card.dart';
import 'package:aasha/module/donation_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class FaqCard extends StatelessWidget {
  final String question;
  final String answer;
  const FaqCard({Key? key, required this.question, required this.answer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 225,
        decoration: BoxDecoration(
            color: Color(0xFFFBFDFF),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Color(0xFFE2EFFF))),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                question,
                style:
                    GoogleFonts.prompt(color: Color(0xFF54BF9F), fontSize: 18),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                answer,
                style: GoogleFonts.poppins(
                    fontSize: 14, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FAQPage extends StatefulWidget {
  const FAQPage({super.key});

  @override
  State<FAQPage> createState() => _FAQPageState();
}

class _FAQPageState extends State<FAQPage> {
  List<Map<String, String>> qna = [
    {
      "question": "What is Aasha?",
      "answer":
          "Aasha is a platform that connects socially conscious entrepreneurs, NGOs, and investors to drive positive change and foster sustainability worldwide. We provide a centralized space for individuals and organizations to collaborate on impactful projects and initiatives.",
    },
    {
      "question": "How does Aasha work?",
      "answer":
          "Aasha allows entrepreneurs to showcase their social impact projects, which are then verified by NGOs and made visible to potential investors. NGOs can also launch campaigns and seek support for their causes."
    },
    {
      "question": "Who can use Aasha?",
      "answer":
          "Aasha is open to socially conscious entrepreneurs, NGOs, investors, and individuals passionate about driving positive change. Whether you have a project to showcase, funds to invest, or simply want to support impactful causes, Aasha welcomes your participation.",
    },
    {
      "question": "How do I get started on Aasha?",
      "answer":
          "To get started on Aasaha, simply sign up for an account on our website or mobile app. Once registered, you can explore projects, connect with stakeholders, and start making a difference in your community and beyond. Users can browse projects, connect with stakeholders."
    },
    {
      "question": "Who can use Aasha?",
      "answer":
          "Aasha is open to socially conscious entrepreneurs, NGOs, investors, and individuals passionate about driving positive change. Whether you have a project to showcase, funds to invest, or simply want to support impactful causes, Aasha welcomes your participation.",
    },
    {
      "question": "Is Aasha free to use?",
      "answer":
          "Yes, Aasha is free to use for all registered users. There are no subscription fees or charges for accessing and browsing projects on the platform. However, there may be fees associated with certain transactions, such as investment contributions, which will be clearly communicated to users."
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F5F9),
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
                  height: 140,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height - 150,
                        width: MediaQuery.of(context).size.width,
                        child: ListView(
                          children: [
                            for (int i = 0; i < qna.length; i++)
                              FaqCard(
                                  question: qna[i]["question"]!,
                                  answer: qna[i]["answer"]!)
                          ],
                        ),
                      )
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
              Text("FAQ",
                  style: GoogleFonts.prompt(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ))
            ]),
          ),
        ],
      ),
    );
  }
}
