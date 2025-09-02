import 'package:flutter/material.dart';
import 'package:main/login_page.dart';
import 'package:main/signup_page.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Landing Page',
    home: LandingPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(color: Color(0xff738CB1)),
        child: Column(
          children: [
            const SizedBox(width: 1000, height: 285),
            Image.asset('images/logonama.png', width: 300, height: 107),
            Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 190.0, 0.0, 0.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffA5C8CE),
                    side: const BorderSide(width: 2, color: Color(0xffA5C8CE)),
                    minimumSize: const Size(300, 45),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LogInPage(),
                        ));
                  },
                  child: const Text(
                    "Log In",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                )),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff738CB1),
                side: const BorderSide(width: 2, color: Color(0xffA5CAD2)),
                minimumSize: const Size(300, 45),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpPage(),
                    ));
              },
              child: const Text(
                "Sign up",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
                width: 300,
                height: 45,
                child: (RichText(
                  text: const TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: 'By logging in or registering, you agree to ',
                          style: TextStyle(fontSize: 12, color: Colors.black)),
                      TextSpan(
                          text: 'HelpMate’s Terms of Service',
                          style: TextStyle(color: Colors.white, fontSize: 12)),
                      TextSpan(
                          text: ' and acknowledge you’ve read',
                          style: TextStyle(fontSize: 12, color: Colors.black)),
                      TextSpan(
                          text: ' Our Privacy Policy',
                          style: TextStyle(color: Colors.white, fontSize: 12)),
                    ],
                  ),
                ))),
          ],
        ),
      ),
    );
  }
}
