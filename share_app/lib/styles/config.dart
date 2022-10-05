import 'package:flutter/material.dart';

/// FileName config
///
/// @Author stf
/// @Date 2022/9/29 09:03
///
/// @Description 全局配置类
class Config {
  /// 主题颜色
  static const int _primaryColorValue = 0xFFef3541;
  static const Color primaryColor = Color(_primaryColorValue);
  static const MaterialColor primarySwatchColor = MaterialColor(
    _primaryColorValue,
    <int, Color>{
      50: Color(0xFFfdeaef),
      100: Color(0xFFfacbd4),
      200: Color(0xFFe9979e),
      300: Color(0xFFde6e78),
      400: Color(0xFFe94b58),
      500: Color(_primaryColorValue),
      600: Color(0xFFe02b3f),
      700: Color(0xFFce2138),
      800: Color(0xFFc11931),
      900: Color(0xFFb20525),
    },
  );
}
