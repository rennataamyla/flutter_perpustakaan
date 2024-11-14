import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'HomePage.dart';
Future<void> main() async {
  await Supabase.initialize(
  url:'https://xrgjuuvfpybgzynuzejq.supabase.co', 
  anonKey:'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InhyZ2p1dXZmcHliZ3p5bnV6ZWpxIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzE1NTM4MDcsImV4cCI6MjA0NzEyOTgwN30.QCzXFk832K_yvEBc8NDPqubmeXrYDHWMm8J2RQv77qw');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Digital Library',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),  
      home: BookListPage(),
    );
  }
}

