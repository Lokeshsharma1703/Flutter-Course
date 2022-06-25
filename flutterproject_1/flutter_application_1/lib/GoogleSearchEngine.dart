import 'package:flutter/material.dart';

class GoogleSearchEngine extends StatelessWidget {
  const GoogleSearchEngine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage("images/googlelogo.png"),
                height: 100,
                width: 250,)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Google Search Engine",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24
                ),)
              ],
            )
          ],
        ),
      ),
    );
  }
}