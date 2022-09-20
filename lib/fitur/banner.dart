import 'package:flutter/material.dart';

class MyBanner extends StatelessWidget {
  const MyBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Container(
                padding: const EdgeInsets.all(0.0),
                height: 100,
                child: Image.network(
                    "https://bola.okezone.com/read/2022/09/07/261/2662335/psg-libas-juventus-2-1-lionel-messi-justru-ukir-catatan-kurang-sedap")))
      ],
    );
  }
}
