import 'package:flutter/material.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({super.key});

  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  TextEditingController cForgetPass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Forget Password Page'),
          backgroundColor: const Color(0xffA5CAD2),
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
            decoration: const BoxDecoration(color: Colors.white),
          ),
          const SizedBox(height: 30),
          Container(
              padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              height: 100.0,
              width: 100.0,
              decoration: const BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage('images/logo.png')))),
          const SizedBox(height: 20),
          const Text.rich(
              TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: 'Let us help you to find your \n',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                  TextSpan(
                      text: 'HelpMate account',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                ],
              ),
              textAlign: TextAlign.center),
          const SizedBox(height: 20),
          SizedBox(
              width: 310,
              child: TextField(
                controller: cForgetPass,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(107, 95, 141, 100)),
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    hintText: 'Enter your email',
                    prefixIcon: Icon(Icons.mail)),
              )),
          const SizedBox(height: 30),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    const Color(0xffA5CAD2),
                side: const BorderSide(
                    width: 2,
                    color: Color(0xffA5CAD2)),
                minimumSize: const Size(300, 45),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              onPressed: () {
                forgetPasswordCheck(context);
              },
              child: const Text(
                "Search",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ))
        ])));
  }

  void forgetPasswordCheck(BuildContext context) {
    if (cForgetPass.text.isNotEmpty) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              content: Text.rich(
            TextSpan(
              children: <TextSpan>[
                const TextSpan(
                    text: 'We sent an email to ',
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
                TextSpan(
                    text: cForgetPass.text,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 18)),
                const TextSpan(
                    text: ' with a link to reset your password.',
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
              ],
            ),
          ));
        },
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Enter your email address'),
          backgroundColor: Colors.black));
    }
  }
}
