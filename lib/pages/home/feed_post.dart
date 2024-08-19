import 'dart:math';
import 'package:flutter/material.dart';
import 'package:instagram_home/models/user.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

class FeedPost extends StatefulWidget {
  const FeedPost({super.key});

  @override
  State<FeedPost> createState() => _FeedPostState();
}

class _FeedPostState extends State<FeedPost> {
  User userData = User(
    profilePhotoUrl: 
        'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/252.png',
    username: 'User',
  );

  int randomNumber() {
    return Random().nextInt(1000) + 100;
  }

  //* A idea era usar uma api que traz dados de usuarios randomicamente
  //* Só que implementei de um jeito meio bunda
  //* O jeito certo seria fazer o fetch de um número de usuários em uma list
  //* Depois buildar os widgets
  //
  // Future<void> fetchUser() async {
  //   final response = await http.get(Uri.parse('https://randomuser.me/api/'));
  //   if (mounted) {
  //     setState(() {
  //       final json = response.body;
  //       if (json.isNotEmpty) {
  //         userData = User.fromMap(jsonDecode(response.body));
  //       }
  //     });
  //   }
  // }

  // @override
  // void initState() {
  //   fetchUser();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          //barra do perfil
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //mini foto
                Row(
                  children: [
                    Container(
                      width: 40,
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
                        padding: const EdgeInsets.all(2),
                        child: Container(
                          padding: const EdgeInsets.all(1),
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
                    //username
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 8,
                      ),
                      child: Text(
                        userData.username,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
                //
                //options
                Container(
                  width: 40,
                  height: 40,
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
          //
          //Post
          Expanded(
            child: Container(
              color: Colors.pink,
            ),
          ),
          //
          //Reações
          SizedBox(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //icons reações
                SizedBox(
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite_outline,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                      Text(
                        randomNumber().toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      //
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.comment_outlined,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                      Text(
                        randomNumber().toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      //
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.send_outlined,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                      Text(
                        randomNumber().toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                //
                //icons favorito
                SizedBox(
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add_circle_outline_sharp,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                ),
              ],
            ),
          ),
          //
          //descrição e comentário
          Container(
            padding: const EdgeInsets.only(
              left: 12,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  child: Row(
                    children: [
                      Text(
                        '${userData.username} ',
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w900),
                      ),
                      const Text(
                        'Mais direitos aos babuinos!!!',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  child: Text(
                    'Ver Comentários',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
