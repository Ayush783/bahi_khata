import 'package:bahi_khata/ui/dashboard.dart';
import 'package:flutter/material.dart';

class BahiKhata extends StatelessWidget {
  const BahiKhata({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xfff0f0f0),
      ),
      home: SafeArea(
        child: DashboardBlocProvider(),
      ),
    );
  }
}
