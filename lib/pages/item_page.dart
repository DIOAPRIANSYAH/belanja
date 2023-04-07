import 'package:flutter/material.dart';

import '../models/item.dart';
import '../widgets/buttom.dart';
import '../widgets/text.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: const Text('DETAIL MAKANAN'),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 10),
        child: Column(
          children: <Widget>[
            MyText(nama: 'Nama  : ${itemArgs.nama}'),
            MyText(nama: 'Lokasi  : ${itemArgs.lokasi}'),
            MyText(nama: 'Kategori  : ${itemArgs.kategori}'),
            MyText(nama: 'Harga : Rp. ${itemArgs.harga}'),
            MyText(nama: 'Deskripsi   : ${itemArgs.deskripsi}'),
          ],
        ),
      ),
    );
  }
}
