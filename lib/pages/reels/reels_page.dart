import 'package:flutter/material.dart';

class ReelsPage extends StatefulWidget {
  static String pageRoute = '/reels_page';

  const ReelsPage({super.key});

  @override
  State<ReelsPage> createState() => _ReelsPageState();
}

class _ReelsPageState extends State<ReelsPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Reels Page', style: TextStyle(color: Colors.white),),
    );
  }
}