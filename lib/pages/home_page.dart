import 'package:diamond_bottom_bar/diamond_bottom_bar.dart';
import 'package:flutter/material.dart';

import '../models/item.dart';
import '../widgets/buttom.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(
        nama: 'Pizza',
        lokasi: 'Italia',
        kategori: 'Junk Food',
        harga: 300000,
        deskripsi:
            'Pizza adalah roti berbentuk bulat pipih dengan diameter 30 cm yang dipanggang dalam oven dan biasanya disiram saus tomat serta keju dan dengan makanan tambahan lainnya (topping) yang sesuai selera penikmatnya.'),
    Item(
        nama: 'Rendang',
        lokasi: 'Indonesia',
        kategori: 'Healthy Food',
        harga: 25000,
        deskripsi:
            'Rendang adalah masakan daging yang berasal dari Minangkabau Sumatra Barat Indonesia. Proses memasak rendang dengan suhu rendah dalam waktu lama, menggunakan santan dan aneka rempah-rempah khas indonesia yang sedikit pedas sehingga menambah ke khas an dan kelezatannya.'),
    Item(
        nama: 'Ramen',
        lokasi: 'Jepang',
        kategori: 'Healthy Food',
        harga: 70000,
        deskripsi:
            'Ramen adalah mie kuah Jepang yang sebenarnya berasal dari Cina dan telah menjadi hidangan yang sangat populer di Jepang. Ciri khas dari ramen adalah bentuk mie yang tipis dan berwarna kuning merupakan hasil buatan tangan atau buatan mesin. Sekilas memang mirip dengan mie instan yang ada di Indonesia.')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DAFTAR MAKANAN'),
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
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(Icons.arrow_drop_down_circle),
                      title: Text(item.nama),
                      subtitle: Text(item.kategori),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(item.deskripsi),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
