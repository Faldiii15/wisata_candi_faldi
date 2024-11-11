import 'package:flutter/material.dart';
import 'package:wisata_candi_faldi/data/candi_data_dart.dart';
import 'package:wisata_candi_faldi/models/candi.dart';
import 'package:wisata_candi_faldi/screens/ItemCard.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomeScreenState();
}
  class _HomeScreenState extends State<Homescreen> {
    @override
  Widget build(BuildContext context) {
      return Scaffold(
      // TODO : 1. Buat appbar dengan judul Wisata Candi
        appBar: AppBar(title: Text('Wisata Candi'),),

      // TODO : 2. Buat Body dengan GridView.Builder
        body: GridView.builder(
            gridDelegate:SliverGridDelegateWithFixedCrossAxisCount
      (crossAxisCount:2),
      padding: EdgeInsets.all(8),
      itemCount: candiList.length,
      itemBuilder: (context,index) {
        Candi candi = candiList[index];
        return ItemCard(candi: candi);
      }

      // TODO : 3. Buat Itemcard sebagao return value dari GridView.Builder
      ),
      );
  }
}

