import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:soulcypher/provider/auth_provider.dart';
import 'package:soulcypher/screens/home_screen.dart';
import 'package:soulcypher/screens/splash_screen.dart';

void main() async{
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => AuthenticationProvider(),)
    ],
    child: const MyApp(),
    )
    
  );

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(), 
    );
  }
}

