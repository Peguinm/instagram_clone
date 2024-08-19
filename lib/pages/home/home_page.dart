import 'package:flutter/material.dart';
import 'package:instagram_home/pages/home/feed_post.dart';
import 'package:instagram_home/pages/home/stories_profile.dart';
import 'package:instagram_home/pages/inital_page.dart';

class HomePage extends StatefulWidget {
  static String pageRoute = '/home_page';
  static const heightBottomNavigation = InitalPage.heightBottomNavigation;

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    final heightPostContainer = mediaQuery.size.height -
        kToolbarHeight -
        mediaQuery.padding.top -
        HomePage.heightBottomNavigation -
        mediaQuery.padding.bottom -
        100.0;

    return Column(
      children: [
        //
        //stories list
        Container(
          height: 135,
          padding: const EdgeInsets.only(
            left: 10,
          ),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            //
            itemCount: 10,
            itemBuilder: (context, index) {
              // print(index);
              return StoriesProfile();
            },
          ),
        ),
        //
        //posts list
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            primary: false,
            //
            itemCount: 1000,
            itemBuilder: (context, index) {
              return SizedBox(
                height: heightPostContainer,
                child: const FeedPost(),
              );
            },
          ),
        ),
      ],
    );
  }
}
