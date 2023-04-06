import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({super.key, required this.nama});

  final String nama;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          nama,
        ),
        const Divider(
          thickness: 1,
        ),
      ],
    );
  }
}
