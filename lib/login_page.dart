// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:main/forgetpassword_page.dart';
import 'package:main/home_page.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  bool visibilityPass = false;
  final String myUser = 'user';
  final String myPass = '123';

  TextEditingController cUser = TextEditingController();
  TextEditingController cPass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Log In Page'),
          backgroundColor: Color(0xffA5CAD2),
        ),
        body: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 1.0),
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(color: Colors.white),
                ),
                Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/logo.png')))),
                const SizedBox(height: 20),
                Card(
                  elevation: 10,
                  shadowColor: const Color(0xffF57385),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(children: [
                    Container(
                      padding: const EdgeInsets.all(25),
                      child: Column(
                        children: [
                          TextField(
                            controller: cUser,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromRGBO(107, 95, 141, 100)),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25))),
                                contentPadding:
                                    EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                                labelText: 'Username',
                                hintText: 'Enter your username',
                                prefixIcon: Icon(Icons.person)),
                          ),
                          const SizedBox(height: 30),
                          TextField(
                            controller: cPass,
                            obscureText: !visibilityPass,
                            decoration: InputDecoration(
                                border: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromRGBO(107, 95, 141, 100)),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25))),
                                contentPadding: const EdgeInsets.fromLTRB(
                                    20.0, 10.0, 20.0, 10.0),
                                labelText: 'Password',
                                hintText: 'Enter your password',
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        visibilityPass = !visibilityPass;
                                      });
                                    },
                                    icon: visibilityPass
                                        ? const Icon(Icons.visibility)
                                        : Icon(Icons.visibility_off))),
                          ),
                          const SizedBox(height: 30),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xffA5CAD2),
                                side: const BorderSide(
                                    width: 2, color: Color(0xffA5CAD2)),
                                minimumSize: const Size(300, 45),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              onPressed: () {
                                logInCheck(context);
                              },
                              child: const Text(
                                "Log In",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ))
                        ],
                      ),
                    )
                  ]),
                ),
                const SizedBox(height: 10),
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle:
                        const TextStyle(fontSize: 18, color: Color(0xff738CB1)),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ForgetPasswordPage(),
                        ));
                  },
                  child: const Text('Forgot  your password?'),
                ),
              ],
            )));
  }

  void logInCheck(BuildContext context) {
    if (cUser.text == myUser && cPass.text == myPass) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Successfull'), backgroundColor: Colors.black));
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomepageState(),
          ));
    } else if (cUser.text.isEmpty || cPass.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Username and password must be filled'),
          backgroundColor: Colors.black));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Incorrect username or password'),
          backgroundColor: Colors.black));
    }
  }
}
