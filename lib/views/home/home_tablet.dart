// home_mobile.dart
import 'package:flutter/material.dart';
import 'package:kscv_portfolio/components/profile_img_component.dart';
import 'package:kscv_portfolio/core/theme/app_colors.dart';

class HomeTablet extends StatelessWidget {
  const HomeTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,   // o el color que prefieras
      body: const Center(
        child: ProfileImg(size: 160),     // ejemplo con tamaño mayor
      ),
    );
  }
}
