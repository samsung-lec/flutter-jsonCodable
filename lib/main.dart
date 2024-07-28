import 'package:flutter/material.dart';
import 'package:json/json.dart';

@JsonCodable()
class Point {
  int x;
  int y;

  Point(this.x, this.y);
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: (){
            Point p1 = Point(1, 3);
            var str1 = p1.toJson();
            print(str1);

            Point p2 = Point.fromJson(str1);
            print(p2.x);
            print(p2.y);

          }, child: Text("버튼")),
          Center(child: Text("Hello"),),
        ],
      ),
    );
  }
}

