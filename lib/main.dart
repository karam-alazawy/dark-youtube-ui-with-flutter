import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube/home.dart';
import 'package:youtube/provider/mainContent.dart';
import 'package:youtube/smallWedget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Channels(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          // primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Stack(
          children: [MyHomePage(), SmallWedget()],
        ),
      ),
    );
  }
}
