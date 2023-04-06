import 'package:flutter/material.dart';

class MyButtom extends StatelessWidget {
  const MyButtom({super.key, required this.text1, required this.text2});

  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Text(
          text1,
          style: const TextStyle(fontSize: 18, color: Colors.white),
        )),
        Expanded(
          child: Text(
            text2,
            textAlign: TextAlign.end,
            style: const TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
