import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'HomePage.dart';
Future<void> main() async {
  await Supabase.initialize(
  url:'https://oniqnvxlmwrgelkxegfn.supabase.co', 
  anonKey:'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9uaXFudnhsbXdyZ2Vsa3hlZ2ZuIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzI1MTM4NTYsImV4cCI6MjA0ODA4OTg1Nn0.-7rl8Q7lX-u6ftDjjl1GmI6THsvgGVxCXad4Wdwv9zM');
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

