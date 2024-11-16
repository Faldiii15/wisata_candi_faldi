import 'package:flutter/material.dart';
import '../models/candi.dart';


class ItemCard extends StatelessWidget {
  // TODO: 1. Deklarasikan variabel yang di butuhkan dan pasang pada konstruktor
  const ItemCard ({super.key, required this.candi});
final Candi candi;


  @override
  Widget build(BuildContext context) {
    return Card(
  //   TODO : 2. Tetapkan parameter shape,margin, dan elevation dari Cari
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
    ),
    margin: EdgeInsets.all(4),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
      //   TODO: 3.Buat image sebagai anak dari Column
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              candi.imageAsset,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ),
      //   TODO: 4. Buat Text sebagai anal dari Column
        Padding(
          padding: const EdgeInsets.only(left: 16, top:8),
          child: Text(
            candi.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16
            ),
          ),
        ),
      //   TODO: 5. Buat Text sebagai anak dari Column
        Padding(
          padding: EdgeInsets.only(left:16,bottom:8),
          child: Text(
                candi.type,
                style: TextStyle(
                fontSize: 12,
                ),
                ),
        ),
    ],
        ),
        );

  }
}
