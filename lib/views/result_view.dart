import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import 'home_view.dart';


class ResultView extends StatelessWidget {
  ResultView({Key? key, required this.result}) : super(key: key);
  String result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("scanned successfully"),
            Text("result is $result"),
            MaterialButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeView()),
                        (Route<dynamic> route) => false);
              },
              color: Colors.blue,
              child: const Text(
                "Scan Again",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
