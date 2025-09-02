import 'package:flutter/material.dart';
import 'package:main/pekerja.dart';

class PekerjaCard extends StatelessWidget {
  final Pekerja pekerja;
  const PekerjaCard({super.key, required this.pekerja});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xffA5CAD2)),
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 99,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                  image: AssetImage(pekerja.profilPicture!),
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${pekerja.nama}",
                style: const TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 13.5,
                    fontWeight: FontWeight.w700),
              ),
              Container(
                  width: 62,
                  height: 30,
                  margin: const EdgeInsets.only(left: 10),
                  child: Image.asset(pekerja.rate!))
            ],
          ),
          Text(
            "${pekerja.deskripsi}",
            maxLines: 3,
            style: const TextStyle(fontFamily: "Roboto", fontSize: 12),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              "${pekerja.harian}\n${pekerja.bulanan}",
              style: const TextStyle(fontFamily: "Roboto", fontSize: 12),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 14),
                    width: 15,
                    height: 15,
                    child: Image.asset('images/locationIcon.png'),
                  ),
                  Container(
                    height: 15,
                    width: 111,
                    margin: const EdgeInsets.only(top: 14),
                    child: Text(
                      "${pekerja.lokasi}",
                      style:
                          const TextStyle(fontFamily: "Roboto", fontSize: 12),
                    ),
                  ),
                ],
              ),
              Container(
                width: 15,
                height: 15,
                margin: const EdgeInsets.only(top: 14),
                child: Image.asset('images/loveIcon.png'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
