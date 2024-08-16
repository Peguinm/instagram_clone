import 'package:flutter/material.dart';
import 'package:instagram_home/pages/home/home_page.dart';

class InitalPage extends StatefulWidget {
  static String pageRoute = '/';
  static const double heightBottomNavigation = 49.0;

  const InitalPage({super.key});

  @override
  State<InitalPage> createState() => _InitalPageState();
}

class _InitalPageState extends State<InitalPage> {
  int _selectedIndex = 0;

  //estilo do user no bottom bar
  Widget bottomBarUser(Border border) {
    return Stack(
      children: [
        Container(
          width: 30,
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: const BorderRadius.all(Radius.circular(100)),
              border: Border.all(color: Colors.black, width: 1),
          ),
          child: Image.network(
            'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/252.png',
            width: 28,
            fit: BoxFit.contain,
          ),
        ),
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(100)),
              border: border,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    //sizes
    // final mediaQuery = MediaQuery.of(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Instagram 2'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_outline),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.messenger_outline),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          height: InitalPage.heightBottomNavigation,
          decoration: BoxDecoration(
              border: Border(
                  top: BorderSide(
            width: 1,
            color: Colors.grey.shade900,
          ))),
          //
          child: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            //
            showSelectedLabels: false,
            showUnselectedLabels: false,

            //
            selectedFontSize: 0.0,
            unselectedFontSize: 0.0,
            iconSize: 29.0,
            //
            type: BottomNavigationBarType.fixed,
            items: [
              const BottomNavigationBarItem(
                label: '',
                activeIcon: Icon(Icons.home),
                icon: Icon(Icons.home_outlined),
              ),
              const BottomNavigationBarItem(
                label: '',
                icon: Icon(Icons.search_outlined),
              ),
              const BottomNavigationBarItem(
                label: '',
                activeIcon: Icon(Icons.add_box),
                icon: Icon(Icons.add_box_outlined),
              ),
              const BottomNavigationBarItem(
                label: '',
                activeIcon: Icon(Icons.movie_creation),
                icon: Icon(Icons.movie_creation_outlined),
              ),
              BottomNavigationBarItem(
                label: '',
                activeIcon:
                    bottomBarUser(Border.all(color: Colors.white, width: 2)),
                icon: bottomBarUser(const Border()),
              ),
            ],
          ),
        ),
        body: IndexedStack(
          index: _selectedIndex,
          children: const [
            HomePage(),
            HomePage(),
            HomePage(),
            HomePage(),
            HomePage(),
          ],
        ));
  }
}
