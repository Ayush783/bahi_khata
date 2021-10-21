import 'package:bahi_khata/ui/widgets/header.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Header(),
          Padding(
            padding: EdgeInsets.only(top: 24, left: 24),
            child: Column(
              children: [
                Text('Transactions made today'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
