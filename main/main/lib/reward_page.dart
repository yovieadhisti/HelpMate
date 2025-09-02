import 'package:flutter/material.dart';

class RewardPage extends StatefulWidget {
  const RewardPage({super.key});

  @override
  State<RewardPage> createState() => _RewardPageState();
}

class _RewardPageState extends State<RewardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const BackButton(color: Colors.black),
          title: const Text(
            'Reward',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 1.0),
          child: Column(children: [
            Card(
              color: const Color(0xffA5CAD2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Bronze",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        const Text(
                          "50 poin",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 3.0,
                                color: const Color(0xffF57385),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 3.0,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Icon(
                              Icons.star,
                              color: Color(0xffDCDCDC),
                            ),
                            const SizedBox(width: 20),
                          ],
                        ),
                        const Text(
                          "Pertahankan Level Perunggu dengan mendapatkan \n250 poin lagi sebelum 31 Desember 2023.",
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Card(
              color: const Color(0xffFFFBFB),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: const BorderSide(
                  color: Color(0xff738CB1),
                  width: 2,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Riwayat poin",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        const Divider(
                          color: Color(0xff738CB1),
                          height: 30,
                          thickness: 2,
                          endIndent: 20,
                        ),
                        const Text(
                          "13 Juli 2022",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey),
                        ),
                        const Text(
                          "Memesan perawat anak",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        Row(
                          children: const [
                            Text(
                              "Poin",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              width: 220,
                            ),
                            Text(
                              "+ 10 poin",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xffF57385)),
                            ),
                          ],
                        ),
                        const Divider(
                          color: Color(0xff738CB1),
                          height: 30,
                          thickness: 1,
                          endIndent: 20,
                        ),
                        const Text(
                          "23 Juli 2022",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey),
                        ),
                        const Text(
                          "Memesan perawat lansia",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        Row(
                          children: const [
                            Text(
                              "Poin",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              width: 220,
                            ),
                            Text(
                              "+ 30 poin",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xffF57385)),
                            ),
                          ],
                        ),
                        const Divider(
                          color: Color(0xff738CB1),
                          height: 30,
                          thickness: 1,
                          endIndent: 20,
                        ),
                        const Text(
                          "18 Agustus 2022",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey),
                        ),
                        const Text(
                          "Memesan perawat lansia",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        Row(
                          children: const [
                            Text(
                              "Poin",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              width: 220,
                            ),
                            Text(
                              "+ 10 poin",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xffF57385)),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ]),
        ));
  }
}
