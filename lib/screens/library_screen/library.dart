import 'package:flutter/material.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Text(
        'Library',
        style: TextStyle(fontSize: 40, color: Colors.yellow),
      ),
    );
  }
}
