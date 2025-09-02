// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class RiwayatPekerjaPage extends StatefulWidget {
  const RiwayatPekerjaPage({super.key});

  @override
  State<RiwayatPekerjaPage> createState() => _RiwayatPekerjaPageState();
}

class _RiwayatPekerjaPageState extends State<RiwayatPekerjaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        title: const Text(
          'Riwayat Pekerja',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 1.0),
          child: Column(
            children: [
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(children: [
                  const SizedBox(
                    width: 20,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'images/purnawatiPP.png',
                      width: 75.0,
                      height: 80.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 30),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        const Text("Purnawati",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w700)),
                        const SizedBox(width: 35),
                        Column(
                          children: const [
                            SizedBox(height: 10),
                            Text(
                              "Rp. 150.000",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "+ 10 poin",
                              style: TextStyle(
                                fontSize: 11,
                                color: Color(0xffF57385),
                              ),
                            ),
                          ],
                        )
                      ]),
                      const Text(
                        "Perawat anak",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff5A5A5A),
                            fontWeight: FontWeight.w400),
                      ),
                      Row(children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff82507C),
                            minimumSize: const Size(70, 30),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Pesan lagi",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        const SizedBox(width: 15),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            side: const BorderSide(
                                width: 2, color: Color(0xff758EB7)),
                            backgroundColor: const Color(0xfff9f9fa),
                            minimumSize: const Size(70, 30),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Beri ulasan",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ]),
                      const Text(
                        "12 Juli 2022 - 13 Juli 2022",
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  )
                ]),
              ),
              const SizedBox(height: 10),
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(children: [
                  const SizedBox(
                    width: 20,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'images/wulandariPP.png',
                      width: 75.0,
                      height: 80.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 30),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        const Text("Wulandari",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w700)),
                        const SizedBox(width: 35),
                        Column(
                          children: const [
                            SizedBox(height: 10),
                            Text(
                              "Rp. 300.000",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "+ 30 poin",
                              style: TextStyle(
                                fontSize: 11,
                                color: Color(0xffF57385),
                              ),
                            ),
                          ],
                        )
                      ]),
                      const Text(
                        "Perawat lansia",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff5A5A5A),
                            fontWeight: FontWeight.w400),
                      ),
                      Row(children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff82507C),
                            minimumSize: const Size(70, 30),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Pesan lagi",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        const SizedBox(width: 15),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            side: const BorderSide(
                                width: 2, color: Color(0xff758EB7)),
                            backgroundColor: const Color(0xfff9f9fa),
                            minimumSize: const Size(70, 30),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Beri ulasan",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ]),
                      const Text(
                        "18 Juli 2022 - 23 Juli 2022",
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  )
                ]),
              ),
              const SizedBox(height: 10),
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(children: [
                  const SizedBox(
                    width: 20,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'images/mayangPP.png',
                      width: 75.0,
                      height: 80.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 30),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        const Text("Mayang",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w700)),
                        const SizedBox(width: 35),
                        Column(
                          children: const [
                            SizedBox(height: 10),
                            Text(
                              "Rp. 150.000",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "+ 10 poin",
                              style: TextStyle(
                                fontSize: 11,
                                color: Color(0xffF57385),
                              ),
                            ),
                          ],
                        )
                      ]),
                      const Text(
                        "Perawat lansia",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff5A5A5A),
                            fontWeight: FontWeight.w400),
                      ),
                      Row(children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff82507C),
                            minimumSize: const Size(70, 30),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Pesan lagi",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        const SizedBox(width: 15),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            side: const BorderSide(
                                width: 2, color: Color(0xff758EB7)),
                            backgroundColor: const Color(0xfff9f9fa),
                            minimumSize: const Size(70, 30),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Beri ulasan",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ]),
                      const Text(
                        "17 Agustus 2022 - 18 Agustus 2022",
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  )
                ]),
              ),
            ],
          )),
    );
  }
}
