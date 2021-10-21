import 'package:bahi_khata/constants/textstyles.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Text(
              '26\nJAN',
              style: kTextstyle1.copyWith(fontSize: 48, height: 0.9),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: '₹',
                        style: kTextstyle2.copyWith(
                          fontSize: 24,
                          color: Color(0XFF30A034),
                          fontFamily: 'proza',
                        ),
                        children: [
                          TextSpan(
                            text: '2311',
                            style: kTextstyle2.copyWith(
                              fontSize: 24,
                              color: Color(0XFF30A034),
                            ),
                          ),
                          TextSpan(
                            text: '\n(+372)',
                            style: kTextstyle2.copyWith(
                              fontSize: 18,
                              color: Color(0XFF297BB7),
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.end,
                    ),
                    RichText(
                      text: TextSpan(
                        text: '₹',
                        style: kTextstyle2.copyWith(
                          fontSize: 24,
                          color: Color(0XFFB21F1F),
                          fontFamily: 'proza',
                        ),
                        children: [
                          TextSpan(
                            text: '2311',
                            style: kTextstyle2.copyWith(
                              fontSize: 24,
                              color: Color(0XFFB21F1F),
                            ),
                          ),
                          TextSpan(
                            text: '\n(-372)',
                            style: kTextstyle2.copyWith(
                              fontSize: 18,
                              color: Color(0XFFAB9F2F),
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.end,
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 16)),
                Text(
                  'monthly',
                  style: kTextstyle2,
                ),
                Padding(padding: EdgeInsets.only(top: 16)),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(bottom: 24)),
        ],
      ),
    );
  }
}
