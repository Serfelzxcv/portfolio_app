import 'package:flutter/material.dart';

enum DeviceScreenType { mobile, tablet, desktop }

class ScreenUtils {
  // Romperemos en 600 px y 1024 px (recomendado por la doc oficial).
  static const _tabletBreakpoint  = 600.0;
  static const _desktopBreakpoint = 1024.0;

  static DeviceScreenType deviceType(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width; // método preferido 2024+ :contentReference[oaicite:1]{index=1}
    if (width >= _desktopBreakpoint) return DeviceScreenType.desktop;
    if (width >= _tabletBreakpoint)  return DeviceScreenType.tablet;
    return DeviceScreenType.mobile;
  }

  static bool isMobile (BuildContext c) => deviceType(c) == DeviceScreenType.mobile;
  static bool isDesktop(BuildContext c) => deviceType(c) == DeviceScreenType.desktop;
}
