import 'package:d_using_widgets_git/config/theme/app_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final isDarkProvider = StateProvider((ref) => false);

final colorListProvider = Provider((ref) => colorList);

final selectedColorProvider = StateProvider((ref) => 0);
