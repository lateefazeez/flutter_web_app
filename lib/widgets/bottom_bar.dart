import 'package:web_app/widgets/bottom_bar_column.dart';
import 'package:web_app/widgets/info_text.dart';
import 'package:web_app/widgets/responsive.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);
  static const Color gradientStartColor = Color(0xff11998e);
  static const Color gradientEndColor = Color(0xff0575E6);
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(0.0)),
          gradient: LinearGradient(
              colors: [
                gradientStartColor,
                gradientEndColor
              ],
              begin: const FractionalOffset(0.2, 0.2),
              end: const FractionalOffset(1.0, 1.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp),
        ),
      padding: EdgeInsets.all(30),
      //color: Colors.blueGrey[900],
      child:
      MediaQuery.of(context).size.width < 800 ?
          Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BottomBarColumn(
                    heading: 'ABOUT',
                    s1: 'Contact Us',
                    s2: 'About Us',
                    s3: 'Careers',
                  ),
                  BottomBarColumn(
                    heading: 'HELP',
                    s1: 'Payment',
                    s2: 'Cancellation',
                    s3: 'FAQ',
                  ),
                  BottomBarColumn(
                    heading: 'SOCIAL',
                    s1: 'Twitter',
                    s2: 'Facebook',
                    s3: 'YouTube',
                  ),
                ],
              ),
              Divider(
                color: Colors.white60,
              ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InfoText(
                    type: 'Email',
                    text: 'codelate18@gmail.com',
                  ),
                  SizedBox(height: 5),
                  InfoText(
                    type: 'Address',
                    text: '1729, Cornerstone Blvd, Calgary, NE - T3N 1S4',
                  ),
                  Divider(
                    color: Colors.white,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Copyright © 2022 | Codelate',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ) :
          Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BottomBarColumn(
                      heading: 'ABOUT',
                      s1: 'Contact Us',
                      s2: 'About Us',
                      s3: 'Careers',
                    ),
                    BottomBarColumn(
                      heading: 'HELP',
                      s1: 'Payment',
                      s2: 'Cancellation',
                      s3: 'FAQ',
                    ),
                    BottomBarColumn(
                      heading: 'SOCIAL',
                      s1: 'Twitter',
                      s2: 'Facebook',
                      s3: 'YouTube',
                    ),
                    Container(
                      color: Colors.white,
                      width: 2,
                      height: 150,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InfoText(
                          type: 'Email',
                          text: 'codelate18@gmail.com',
                        ),
                        SizedBox(height: 5),
                        InfoText(
                          type: 'Address',
                          text: '1729, Cornerstone Blvd, Calgary, NE - T3N 1S4',
                        )
                      ],
                    ),
                  ],
                ),
                Divider(
                  color: Colors.white,
                ),
                SizedBox(height: 20),
                Text(
                  'Copyright © 2022 | Codelate',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
    );
  }
}
