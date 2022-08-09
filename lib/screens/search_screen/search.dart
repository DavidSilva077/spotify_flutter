import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Text(
        'Search',
        style: TextStyle(fontSize: 40, color: Colors.yellow),
      ),
    );
  }
}
