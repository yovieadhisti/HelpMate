import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        title: const Text(
          'Pengaturan lainnya',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 40,
              width: 450,
              decoration: const BoxDecoration(
                color: Color(0xffA5CAD2),
              ),
              padding: const EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Akun saya',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
                width: 350,
                height: 45,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffFFFBFB),
                      side:
                          const BorderSide(width: 2, color: Color(0xff758EB7)),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    onPressed: () {},
                    child: Row(children: [
                      const Text(
                        "Metode pembayaran",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(width: 170),
                      Container(
                          height: 10.0,
                          width: 10.0,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/arrowIcon.png'))))
                    ]))),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
                width: 350,
                height: 45,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffFFFBFB),
                      side:
                          const BorderSide(width: 2, color: Color(0xff758EB7)),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    onPressed: () {},
                    child: Row(children: [
                      const Text(
                        "Alamat yang tersimpan",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(width: 150),
                      Container(
                          height: 10.0,
                          width: 10.0,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/arrowIcon.png'))))
                    ]))),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 40,
              width: 450,
              decoration: const BoxDecoration(
                color: Color(0xffA5CAD2),
              ),
              padding: const EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Pengaturan',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
                width: 350,
                height: 45,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffFFFBFB),
                      side:
                          const BorderSide(width: 2, color: Color(0xff758EB7)),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    onPressed: () {},
                    child: Row(children: [
                      const Text(
                        "Pengaturan chat",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(width: 190),
                      Container(
                          height: 10.0,
                          width: 10.0,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/arrowIcon.png'))))
                    ]))),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
                width: 350,
                height: 45,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffFFFBFB),
                      side:
                          const BorderSide(width: 2, color: Color(0xff758EB7)),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    onPressed: () {},
                    child: Row(children: [
                      const Text(
                        "Pengaturan notifikasi",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(width: 158),
                      Container(
                          height: 10.0,
                          width: 10.0,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/arrowIcon.png'))))
                    ]))),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
                width: 350,
                height: 45,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffFFFBFB),
                      side:
                          const BorderSide(width: 2, color: Color(0xff758EB7)),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    onPressed: () {},
                    child: Row(children: [
                      const Text(
                        "Ubah bahasa",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(width: 215),
                      Container(
                          height: 10.0,
                          width: 10.0,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/arrowIcon.png'))))
                    ]))),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 40,
              width: 450,
              decoration: const BoxDecoration(
                color: Color(0xffA5CAD2),
              ),
              padding: const EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Bantuan',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
                width: 350,
                height: 45,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffFFFBFB),
                      side:
                          const BorderSide(width: 2, color: Color(0xff758EB7)),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    onPressed: () {},
                    child: Row(children: [
                      const Text(
                        "Pusat bantuan",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(width: 205),
                      Container(
                          height: 10.0,
                          width: 10.0,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/arrowIcon.png'))))
                    ]))),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
                width: 350,
                height: 45,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffFFFBFB),
                      side:
                          const BorderSide(width: 2, color: Color(0xff758EB7)),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    onPressed: () {},
                    child: Row(children: [
                      const Text(
                        "Kebijakan HelpMate",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(width: 167),
                      Container(
                          height: 10.0,
                          width: 10.0,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/arrowIcon.png'))))
                    ]))),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
                width: 350,
                height: 45,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffFFFBFB),
                      side:
                          const BorderSide(width: 2, color: Color(0xff758EB7)),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    onPressed: () {},
                    child: Row(children: [
                      const Text(
                        "Ajukan penghapusan akun",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(width: 125),
                      Container(
                          height: 10.0,
                          width: 10.0,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/arrowIcon.png'))))
                    ]))),
          ],
        ),
      ),
    );
  }
}
