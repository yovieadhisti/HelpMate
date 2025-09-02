import 'package:flutter/material.dart';

class PekerjaFavoritePage extends StatefulWidget {
  const PekerjaFavoritePage({super.key});

  @override
  State<PekerjaFavoritePage> createState() => _PekerjaFavoritePageState();
}

class _PekerjaFavoritePageState extends State<PekerjaFavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        title: const Text(
          'Pekerja Favorite',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 1.0),
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
                  height: 120,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'images/asihRatnasariPP.png',
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
                    Row(children: const [
                      Text("Asih Ratnasari",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w700)),
                      SizedBox(width: 50),
                      Icon(
                        Icons.favorite,
                        color: Color(0xffF57385),
                      )
                    ]),
                    const Text(
                      "Perawat anak",
                      style: TextStyle(
                          fontSize: 14,
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
                          "Pesan jasa",
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
                          "Lihat detail",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ]),
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
                  height: 120,
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
                    Row(children: const [
                      Text("Wulandari",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w700)),
                      SizedBox(width: 90),
                      Icon(
                        Icons.favorite,
                        color: Color(0xffF57385),
                      )
                    ]),
                    const Text(
                      "Perawat lansia",
                      style: TextStyle(
                          fontSize: 14,
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
                          "Pesan jasa",
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
                          "Lihat detail",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ]),
                    const SizedBox(height: 10),
                  ],
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
