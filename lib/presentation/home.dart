import 'package:flutter/material.dart';
import '../core/theme/app_colors.dart';
import '../core/responsive/screen_utils.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = ScreenUtils.isMobile(context);

    return Center(
      child: Text(
        isMobile ? 'Hola desde móvil' : 'Hola desde escritorio',
        style: Theme.of(context)
            .textTheme
            .headlineMedium
            ?.copyWith(color: AppColors.red),
      ),
    );
  }
}
