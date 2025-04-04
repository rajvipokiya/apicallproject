import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Rest Api Call", style: TextStyle(
            color: Colors.white),)),
        backgroundColor: Colors.cyan,
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: fetchUser),
    );
  }

  void fetchUser(){
    print('fetchUser Called');
    const url =""
    final uri = Uri.parse(url);
    http.get(uri);
  }

}
