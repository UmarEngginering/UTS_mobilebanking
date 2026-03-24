import 'package:flutter/material.dart';

void main() => runApp(const MobileBankingUmar());

class MobileBankingUmar extends StatelessWidget {
  const MobileBankingUmar({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF014A94),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7F9),
      appBar: AppBar(
        backgroundColor: const Color(0xFF014A94),
        elevation: 0,
        toolbarHeight: 80,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("Selamat Datang,", style: TextStyle(fontSize: 14, color: Colors.white70)),
            Text("Umar Faruq", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
          ],
        ),
        actions: [
          IconButton(icon: const Icon(Icons.notifications_none, color: Colors.white), onPressed: () {}),
          const Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: CircleAvatar(backgroundColor: Colors.lightBlueAccent, child: Text("UF",style:
            TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
          ),
        ],
      ),
      body: Center(child: Text("Loading...")), // Placeholder sementara
    );
  }
}