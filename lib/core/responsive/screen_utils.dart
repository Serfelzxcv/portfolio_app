import 'package:flutter/material.dart';

/// Umbrales recomendados por Material 3
///  - ≥ 1024 dp  ⇒ desktop
///  - ≥ 600 dp   ⇒ tablet
///  - < 600 dp   ⇒ mobile
const double kTabletBreakpoint  = 600;
const double kDesktopBreakpoint = 1024;

/// Tipos de pantalla admitidos
enum DeviceScreenType { mobile, tablet, desktop }

class ScreenUtils {
  /// Obtiene el [DeviceScreenType] según el ancho de la ventana.
  static DeviceScreenType deviceType(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width; // API recomendada
    if (width >= kDesktopBreakpoint) return DeviceScreenType.desktop;
    if (width >= kTabletBreakpoint)  return DeviceScreenType.tablet;
    return DeviceScreenType.mobile;
  }

  // Helpers convenientes 👇
  static bool isMobile (BuildContext c) => deviceType(c) == DeviceScreenType.mobile;
  static bool isTablet (BuildContext c) => deviceType(c) == DeviceScreenType.tablet;   // ⬅️ añadido
  static bool isDesktop(BuildContext c) => deviceType(c) == DeviceScreenType.desktop;
}
