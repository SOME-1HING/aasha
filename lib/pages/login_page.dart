import 'package:aasha/components/filled_text_field.dart';
import 'package:aasha/provider/google_sign_in.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/login_curve.png",
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.contain),
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
                    color: const Color(0xFF4CBC9A),
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 32, 12, 16),
            child: FilledTextField(
              controller: _emailController,
              labelText: "Email",
              keyboardType: TextInputType.emailAddress,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 12, 16),
            child: FilledTextField(
              controller: _passwordController,
              labelText: "Password",
              keyboardType: TextInputType.emailAddress,
              obscureText: true,
            ),
          ),
          const SizedBox(height: 48),
          Row(children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: ElevatedButton(
                  onPressed: () => {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF4CBC9A),
                      padding: EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0))),
                  child: const Text(
                    "Login",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ),
          ]),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 64, vertical: 32),
            child: Row(
              children: [
                Expanded(child: Divider(), flex: 1),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text("or sign up with")),
                Expanded(child: Divider(), flex: 1)
              ],
            ),
          ),
          ElevatedButton.icon(
              onPressed: () async {
                final provider =
                    Provider.of<GoogleSignInProvider>(context, listen: false);
                provider.googleLogin();
              },
              icon: Icon(Icons.login),
              label: Text("Log in with Google"))
        ],
      ),
    );
  }
}
