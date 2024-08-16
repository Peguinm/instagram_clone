import 'package:flutter/material.dart';
import 'package:instagram_home/pages/create/create_page.dart';
import 'package:instagram_home/pages/home/home_page.dart';
import 'package:instagram_home/pages/inital_page.dart';
import 'package:instagram_home/pages/profile/profile_page.dart';
import 'package:instagram_home/pages/reels/reels_page.dart';
import 'package:instagram_home/pages/search/search_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Clone',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.black,
          selectedIconTheme: IconThemeData(
            color: Colors.white,
          ),
          unselectedIconTheme: IconThemeData(
            color: Colors.white,
          ),
          showSelectedLabels: false,
          showUnselectedLabels: false,
        ),

        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 22,
          ),
          toolbarTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 22,
          ),
          actionsIconTheme: IconThemeData(
            color: Colors.white,
          )
        ),
        //
        splashColor: Colors.transparent,
      ),

      debugShowCheckedModeBanner: false,

      initialRoute: '/',
      routes: {
        InitalPage.pageRoute: (BuildContext context) => const InitalPage(),
        HomePage.pageRoute: (BuildContext context) => const HomePage(),
        SearchPage.pageRoute: (BuildContext context) => const SearchPage(),
        CreatePage.pageRoute: (BuildContext context) => const CreatePage(),
        ReelsPage.pageRoute: (BuildContext context) => const ReelsPage(),
        ProfilePage.pageRoute: (BuildContext context) => const ProfilePage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
