import 'package:belanja/widgets/text.dart';
import 'package:flutter/material.dart';

import '../models/item.dart';
import '../widgets/buttom.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(name: 'Sabun', merek: 'Lux', stok: 20, price: 5000, ket: '75 gr'),
    Item(
        name: 'Sampo',
        merek: 'Lifebouy',
        stok: 100,
        price: 13000,
        ket: '70 ml'),
    Item(
        name: 'Pasta Gigi',
        merek: 'Pepsodent',
        stok: 20,
        price: 12000,
        ket: '225 gr')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Barang'),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];

            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/item', arguments: item);
              },
              child: Card(
                child: Container(
                  margin: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Expanded(child: Text(item.name)),
                      const Expanded(
                        child: Text(
                          'Detail',
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
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
