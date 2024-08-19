import 'package:flutter/material.dart';

class CreatePage extends StatefulWidget {
  static String pageRoute = '/create_page';

  const CreatePage({super.key});

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Creation Page', style: TextStyle(color: Colors.white),),
    );
  }
}