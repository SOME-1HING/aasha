import 'dart:convert';
import 'dart:io';

import 'package:aasha/components/card.dart';
import 'package:aasha/module/donation_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class RoiPage extends StatefulWidget {
  final String projName;
  final String projDesc;
  const RoiPage({Key? key, required this.projName, required this.projDesc})
      : super(key: key);

  @override
  State<RoiPage> createState() => _RoiPageState();
}

class _RoiPageState extends State<RoiPage> {
  String res = "";

  Future<void> getResponse() async {
    Map<String, dynamic> requestData = {
      "project_name": this.widget.projName,
      "project_desc": this.widget.projDesc
    };
    String jsonString = jsonEncode(requestData);
    http.Response response = await http.post(
      Uri.parse("http://155.248.250.133/roi"),
      body: jsonString,
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
      },
    );
    setState(() {
      res = response.body;
    });
  }

  @override
  void initState() {
    getResponse();

    super.initState();
  }

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
                  height: 200,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            children: [
                              Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      (res == "")
                                          ? CircularProgressIndicator()
                                          : Text(
                                              res,
                                              textAlign: TextAlign.center,
                                            )
                                    ],
                                  ),
                                  width: 400,
                                  height: 400,
                                  decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Color(0xFFE2EFFF)),
                                      borderRadius: BorderRadius.circular(16),
                                      color: Color(0xFFFBFDFF))),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Disclaimer",
                                style: GoogleFonts.poppins(
                                    fontSize: 20, color: Color(0xFF4CBC9A)),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                textAlign: TextAlign.center,
                                "Predictions provided are estimates based on data analysis. They may not always be accurate and are subject to change. Users should use their judgment and consider other sources of information before relying solely on our predictions. We do not accept responsibility for actions taken based on predictions provided.",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Color(0xFF4CBC9A)),
                              )
                            ],
                          ))
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
              Text("ROI",
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
