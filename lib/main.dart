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
      body: Center(child: Text("Loading...")), // Placeholder sementara
    );
  }
}