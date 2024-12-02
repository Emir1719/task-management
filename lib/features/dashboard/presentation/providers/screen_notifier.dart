import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_management/features/dashboard/data/models/screen_size.dart';

class ScreenNotifier extends Notifier<ScreenSize> {
  @override
  ScreenSize build() {
    // Başlangıç değeri olarak desktop ekran kullanıyoruz.
    return ScreenSize.desktop;
  }

  void changeScreenType(double screenSize) {
    state = _getScreenSize(screenSize);
  }

  ScreenSize _getScreenSize(double width) {
    if (width < ScreenSize.mobile.widthLimit) {
      return ScreenSize.mobile; // Mobile screen
    } else if (width < ScreenSize.tablet.widthLimit) {
      return ScreenSize.tablet; // Tablet screen
    } else {
      return ScreenSize.desktop; // Desktop, web screen
    }
  }
}

final screenNotifierProvider = NotifierProvider<ScreenNotifier, ScreenSize>(ScreenNotifier.new);
