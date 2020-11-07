import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:segundoparcialflorenciaramirezmendez/apiservice.dart';
import 'package:segundoparcialflorenciaramirezmendez/lucky.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MagicBall());

class MagicBall extends StatelessWidget {
  const MagicBall({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Florencia's Magic Ball",
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController lucky = TextEditingController();
    ApiService apiService = ApiService();
    return Scaffold(
      backgroundColor: Colors.limeAccent[200],
      appBar: AppBar(
        title: Text(
          "MAGIC - FLORENCIA RAMIREZ",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.yellowAccent[100],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20.0),
            child: Image.network(
                "https://www.itsmymitzvah.com/image/cache/data/MAGIC%20ANSWER%20BALL/black-231x250.jpg"),
            alignment: Alignment.topCenter,
          ),
          Column(
            children: [
              Text(
                "Cuál es tu suerte?",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                width: MediaQuery.of(context).size.width,
                child: RaisedButton(
                    child: Text("Obtener Suerte"),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
