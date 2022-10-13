import 'package:flutter/material.dart';
import 'package:gmailverify/auth/google_verification.dart';
import 'package:gmailverify/widgets/sign_up.dart';
import 'package:google_fonts/google_fonts.dart';

class GmailVerify extends StatelessWidget {
  const GmailVerify({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Welcome",
                style: GoogleFonts.nunitoSans(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Easiest Way Manage your Money",
                style: GoogleFonts.mulish(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Finance is a gun. Politics is knowing when to pull the Trigger.",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              SizedBox(
                width: 660,
                height: 50,
                child: ElevatedButton(
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 0, 0, 132)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ))),
                    // ignore: avoid_returning_null_for_void
                    onPressed: () {
                      signup(context);
                    },
                    child: Text("Sign In with Google".toUpperCase(),
                        style: TextStyle(fontSize: 14))),
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: 660,
                height: 50,
                child: ElevatedButton(
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(255, 252, 168, 42)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ))),
                    // ignore: avoid_returning_null_for_void
                    onPressed: () => null,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpPage()));
                      },
                      child: Text("Create an account".toUpperCase(),
                          style: TextStyle(fontSize: 14, color: Colors.black)),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
