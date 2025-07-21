
import 'package:flutter/material.dart';
import 'package:kscv_portfolio/core/theme/app_colors.dart';

/// Avatar del gato dentro de un círculo amarillo.
/// - [size] es el diámetro en logical pixels (dp).
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
      backgroundColor: AppColors.yellow,    // fondo amarillo
      backgroundImage: const AssetImage(      // foto del gato (PNG sin fondo)
        'assets/images/gato_rvbg.png',
      ),
    );
  }
}
