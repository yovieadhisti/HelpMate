import 'package:flutter/material.dart';
import 'package:main/home_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool visibilityPass = false;
  bool visibilityPass2 = false;
  final String myUser = 'user';

  TextEditingController cUser = TextEditingController();
  TextEditingController cName = TextEditingController();
  TextEditingController cBirthday = TextEditingController();
  TextEditingController cPhoneNumber = TextEditingController();
  TextEditingController cEmail = TextEditingController();
  TextEditingController cPass = TextEditingController();
  TextEditingController cPass2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sign Up Page'),
          backgroundColor: const Color(0xffA5CAD2),
        ),
        body: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 1.0),
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
                            decoration: const InputDecoration(
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
                            controller: cName,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromRGBO(107, 95, 141, 100)),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25))),
                                contentPadding:
                                    EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                                labelText: 'Full Name',
                                hintText: 'Enter your full name',
                                prefixIcon: Icon(Icons.man)),
                          ),
                          const SizedBox(height: 30),
                          TextField(
                            controller: cBirthday,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromRGBO(107, 95, 141, 100)),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25))),
                                contentPadding:
                                    EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                                labelText: 'Birthday',
                                hintText: 'Enter your birthday',
                                prefixIcon: Icon(Icons.calendar_month)),
                          ),
                          const SizedBox(height: 30),
                          TextField(
                            controller: cPhoneNumber,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromRGBO(107, 95, 141, 100)),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25))),
                                contentPadding:
                                    EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                                labelText: 'Phone Number',
                                hintText: 'Enter your phone number',
                                prefixIcon: Icon(Icons.phone)),
                          ),
                          const SizedBox(height: 30),
                          TextField(
                            controller: cEmail,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromRGBO(107, 95, 141, 100)),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25))),
                                contentPadding:
                                    EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                                labelText: 'Email',
                                hintText: 'Enter your email',
                                prefixIcon: Icon(Icons.mail)),
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
                                        : const Icon(Icons.visibility_off))),
                          ),
                          const SizedBox(height: 30),
                          TextField(
                            controller: cPass2,
                            obscureText: !visibilityPass2,
                            decoration: InputDecoration(
                                border: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromRGBO(107, 95, 141, 100)),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25))),
                                contentPadding: const EdgeInsets.fromLTRB(
                                    20.0, 10.0, 20.0, 10.0),
                                labelText: 'Confirm Password',
                                hintText: 'Re-enter your password',
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        visibilityPass2 = !visibilityPass2;
                                      });
                                    },
                                    icon: visibilityPass2
                                        ? const Icon(Icons.visibility)
                                        : const Icon(Icons.visibility_off))),
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
                                signUpCheck(context);
                              },
                              child: const Text(
                                "Sign Up",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ))
                        ],
                      ),
                    )
                  ]),
                )
              ],
            )));
  }

  void signUpCheck(BuildContext context) {
    if (cUser.text == myUser) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content:
              Text('This username is not available. Please enter a new one.'),
          backgroundColor: Colors.black));
    } else if (cUser.text.isEmpty ||
        cName.text.isEmpty ||
        cBirthday.text.isEmpty ||
        cPhoneNumber.text.isEmpty ||
        cEmail.text.isEmpty ||
        cPass.text.isEmpty ||
        cPass2.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Every field must be filled'),
          backgroundColor: Colors.black));
    } else if (cPass.text != cPass2.text) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Password did not same. Please enter the same one'),
          backgroundColor: Colors.black));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Successfull'), backgroundColor: Colors.black));
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomepageState(),
          ));
    }
  }
}
