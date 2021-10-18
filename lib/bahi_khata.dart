import 'package:bahi_khata/ui/dashboard.dart';
import 'package:flutter/material.dart';

class BahiKhata extends StatelessWidget {
  const BahiKhata({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: DashBoard()),
    );
  }
}
