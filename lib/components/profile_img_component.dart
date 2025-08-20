
import 'package:flutter/material.dart';
class ProfileImg extends StatelessWidget {
  const ProfileImg({
    super.key,
    this.size = 120,
  });

  final double size;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: size / 2,                       // Flutter pide radio, no diámetro
      backgroundColor: const Color.fromARGB(255, 232, 212, 35),    // fondo amarillo
      backgroundImage: const AssetImage(      // foto del gato (PNG sin fondo)
        'assets/images/gato_rvbg.png',
      ),
    );
  }
}
