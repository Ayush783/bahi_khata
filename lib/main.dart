import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'bahi_khata.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  //setting status bar and navigation bar colors
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Color(0xff252525),
      systemNavigationBarColor: Color(0xfff0f0f0),
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );
  //only portrait mode
  SystemChrome?.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) => runApp(BahiKhata()));
}
