import 'package:aasha/components/filled_text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF4CBC9A),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/curve_white.png",
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.contain,
                )
              ],
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset("assets/images/logo.png", width: 64, height: 64),
                const SizedBox(width: 16),
                Text("AASHA",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w900,
                      fontSize: 36,
                      color: Colors.white,
                    )),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              '"Join us in  changing lives today! "',
              style: GoogleFonts.poppins(
                  color: Colors.white, fontWeight: FontWeight.w400),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 32, 12, 0),
              child: FilledTextField(
                controller: _emailController,
                labelText: 'Email',
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 32, 12, 0),
              child: FilledTextField(
                controller: _passwordController,
                labelText: 'Password',
                obscureText: true, // Password field with obscured text
              ),
            ),
          ],
        ));
  }
}
