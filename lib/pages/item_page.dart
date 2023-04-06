import 'package:belanja/widgets/buttom.dart';
import 'package:belanja/widgets/text.dart';
import 'package:flutter/material.dart';

import '../models/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Barang'),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 10),
        child: Column(
          children: <Widget>[
            MyText(nama: 'Nama  : ${itemArgs.name}'),
            MyText(nama: 'Merk  : ${itemArgs.merek}'),
            MyText(nama: 'Stok  : ${itemArgs.stok}'),
            MyText(nama: 'Harga : Rp. ${itemArgs.price}'),
            MyText(nama: 'Ket   : ${itemArgs.ket}'),
          ],
        ),
      ),
      bottomNavigationBar: const BottomAppBar(
          padding: EdgeInsets.all(15),
          color: Colors.blue,
          child: MyButtom(
              text1: 'Daftar Barang', text2: 'Eka Yulianita Widyanti')),
    );
  }
}
