import 'package:flutter/material.dart';
import 'package:instagram_home/models/user.dart';

class StoriesProfile extends StatelessWidget {
  final User userData = User(
    profilePhotoUrl: 
        'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/252.png',
    username: 'User',
  );

  StoriesProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 90,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.purple,
                  Colors.pink,
                  Colors.red,
                  Colors.orange,
                  Colors.yellow,
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(3),
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                  border: Border.all(
                    color: Colors.black,
                    width: 4,
                  ),
                ),
                child: Image.network(
                  userData.profilePhotoUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          //
          //text stories
          Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.all(5),
            child: Text(
              userData.username,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
