import 'package:flutter/material.dart';

class MyHeader extends StatelessWidget {
  const MyHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            child: const Text("Berita Terbaru", textAlign: TextAlign.center),
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            child: const Text("Pertandingan Baru", textAlign: TextAlign.center,),
          ),
        ),
      ],
    );
  }
}