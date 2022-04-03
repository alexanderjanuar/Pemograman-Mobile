import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var tinggi = MediaQuery.of(context).size.height;
    var lebar = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          title: RichText(
              text: const TextSpan(
                  text: "Posstest 1 - Alexander",
                  style: TextStyle(
                    fontFamily: 'Leto',
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,

                  ),
                  children: [
                TextSpan(
                    text: "\nPemograman Mobile",
                    style: TextStyle(
                      fontFamily: 'Leto',
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ))
              ])),
          leadingWidth: 60,
          backgroundColor: Colors.transparent,
          leading: const Icon(FontAwesomeIcons.mobile)),
      body: Column(
        children: <Widget>[
          Container(
              margin: EdgeInsets.fromLTRB(15, 40, 15, 0),
              height: tinggi / 10,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xFFFFF165D).withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(5, 5))
                  ],
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[
                        Color(0xFFFFF9A00),
                        Color(0xFFFFF165D),
                      ])),
              child: const Text("About Me",
                  style: TextStyle(
                    fontFamily: 'Leto',
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ))),
          Container(
              margin: EdgeInsets.fromLTRB(15, 20, 15, 0),
              height: tinggi / 2,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[
                        Color(0xFFFF3490DE),
                        Color(0xFFFF6639A6),
                      ])),
              child: RichText(
                  text: const TextSpan(
                      text: "Alexander Januar \nDienc Caesarea Andhika",
                      style: TextStyle(
                        fontFamily: 'Leto',
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      children: [
                    TextSpan(
                        text: "\n2009106035",
                        style: TextStyle(
                          fontFamily: 'Leto',
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ))
                  ])))
        ],
      ),
    );
  }
}
