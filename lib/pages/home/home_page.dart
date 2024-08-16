import 'package:flutter/material.dart';
import 'package:instagram_home/pages/inital_page.dart';

class HomePage extends StatelessWidget {
  static String pageRoute = '/home_page';
  static const heightBottomNavigation = InitalPage.heightBottomNavigation;

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    final heightPostContainer = mediaQuery.size.height -
        kToolbarHeight -
        mediaQuery.padding.top -
        heightBottomNavigation -
        mediaQuery.padding.bottom -
        100.0;

    return Column(
      children: [
        //
        //stories list
        Container(
          height: 120,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            //
            itemCount: 10,
            itemBuilder: (context, index) {
              // print(index);
              return Container(
                width: 100.0,
                color: Color.fromRGBO(
                    90 * index, 255 - index * 30, 255 - index * 10, 1.0),
              );
            },
          ),
        ),
        //
        //posts list
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            //
            itemCount: 1000,
            itemBuilder: (context, index) {
              print(index);
              return Container(
                height: heightPostContainer,
                color: Color.fromRGBO(
                    120 * (index + 1), 255 - index * 20, 255 - (index + 1) * 50, 1.0),
              );
            },
          ),
        ),
      ],
    );
  }
}
