import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).copyWith().size.height,
        color: Colors.red[100],
        child: Image.network(
          'https://img.icons8.com/flat_round/2x/list.png',
        ),
      ),
    );
  }
}
