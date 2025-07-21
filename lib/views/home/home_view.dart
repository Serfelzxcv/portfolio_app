import 'package:flutter/material.dart';
import 'package:kscv_portfolio/views/home/home_desktop.dart';
import 'package:kscv_portfolio/views/home/home_mobile.dart';
import 'package:kscv_portfolio/views/home/home_tablet.dart';
import '../../core/responsive/screen_utils.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile   = ScreenUtils.isMobile(context);
    final isTablet   = ScreenUtils.isTablet(context);
    final isDesktop  = ScreenUtils.isDesktop(context);
    return isMobile  ? HomeMobile()    :
           isTablet  ? HomeTablet()    :
           isDesktop ? HomeDesktop()   : Placeholder();
  }
}
