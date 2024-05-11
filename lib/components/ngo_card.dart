import 'package:aasha/module/ngo_model.dart';
import 'package:aasha/pages/ngo_profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NgoCard extends StatefulWidget {
  final NgoModel ngoModel;
  const NgoCard({Key? key, required this.ngoModel}) : super(key: key);

  @override
  State<NgoCard> createState() => _NgoCardState();
}

class _NgoCardState extends State<NgoCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 200,
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      NgoProfile(ngoModel: this.widget.ngoModel)));
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 102,
              height: 102,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(84),
                  border: Border.all(width: 2, color: Color(0xFF4CBC9A))),
              child: ClipOval(
                child: Image.asset(
                  this.widget.ngoModel.ngo_image_url,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              this.widget.ngoModel.name,
              style: GoogleFonts.prompt(fontWeight: FontWeight.w300),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
