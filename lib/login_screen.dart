import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Supabase with your REAL project URL + anon key
  await Supabase.initialize(
    url: 'https://xlinwaqckqvdvayeupis.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InhsaW53YXFja3F2ZHZheWV1cGlzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjM4NDMzNjcsImV4cCI6MjA3OTQxOTM2N30.V3aiOFcHVxYhTj9VTvRsSPZl0ACGK3aCsQfUdXES2cA',
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Henson Field App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const LoginScreen(),
    );
  }
}
