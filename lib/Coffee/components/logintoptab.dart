import 'package:coffee/Coffee/components/Trending.dart';
import 'package:flutter/material.dart';

class Toopp extends StatefulWidget {
  const Toopp({super.key});

  @override
  State<Toopp> createState() => _TooppState();
}

class _TooppState extends State<Toopp> {
  @override
  Widget build(BuildContext context) {
    return   Expanded(
      child: TabBarView(

        children: [

          trending(),
          trending(),
          trending(),
        ],
      ),
    );
  }
}
