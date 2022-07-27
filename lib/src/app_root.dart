import 'package:flutter/material.dart';
import 'package:qr_code_scanner/views/home_view.dart';


class MyApp extends StatelessWidget {
const MyApp({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
  return MaterialApp(
    title: 'Flutter Demo',
    debugShowCheckedModeBanner: false,
    home: HomeView(),
  );
}
}