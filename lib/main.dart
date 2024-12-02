import 'package:flutter/material.dart';
import 'package:school/home.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Home(),
    ),
  );
}


class SandBox extends StatelessWidget {
  const SandBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('sandBox'),
        backgroundColor: Colors.grey,
       actions: const  [Text('login'), Text('data')],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            height: 100,
            color: Colors.red,
            child: const Text('data'),
          ),
          Container(
            height: 400,
            color: Colors.yellowAccent,
            child: const Text('data'),
          ),
          Container(
            height: 500,
            color: Colors.blue,
            child: const Text('data'),
          )
        ],
      )
      );
  }
}