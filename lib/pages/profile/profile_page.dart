import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  static String pageRoute = '/profile_page';

  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Profile Page', style: TextStyle(color: Colors.white),),
    );
  }
}