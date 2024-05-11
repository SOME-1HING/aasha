import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              width: MediaQuery.of(context).size.width,
              "assets/images/login_curve.png",
              fit: BoxFit.contain,
            )
          ],
        ),
        const Text(
          "Welcome To",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        Text("AASHA",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w900,
              fontSize: 32,
              color: const Color(0xFF4CBC9A),
            )),
        const SizedBox(height: 16),
        Text("Active Assistance in Securing Hope for all",
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            )),
        const SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset("assets/images/logo.png")],
        ),
        const SizedBox(height: 64),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                  side: const BorderSide(width: 2, color: Colors.black),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 8)),
              child:
                  const Text("Register", style: TextStyle(color: Colors.black)),
            ),
            ElevatedButton(
              onPressed: () => {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF4CBC9A),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 44, vertical: 8)),
              child: const Text(
                "Login",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        )
      ],
    ));
  }
}
