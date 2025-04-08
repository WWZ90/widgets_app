import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';


//Inmutable
final colorListProvider = Provider((ref) => colorList);

final isDarkModeProvider = StateProvider<bool>((ref) {
  return false;
});

final selectedColorProvider = StateProvider<int>((ref) {
  return 0;
});