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
          Container(
            height: size.height * 0.25,
            width: size.width,
            decoration: BoxDecoration(
              color: Color(0xff252525),
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(42),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  offset: Offset(1, 4),
                  blurRadius: 16,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('26\nJAN'),
                    Text('2311'),
                    Text('2311'),
                  ],
                ),
                Spacer(),
                Text('monthly'),
                Padding(padding: EdgeInsets.only(bottom: 24)),
              ],
            ),
          ),
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
