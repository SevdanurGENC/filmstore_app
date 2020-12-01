import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'auth_type_selector.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

/// Uygulamanın başlangıç noktası.
///
/// Bir [Material App] döndürür.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nano FilmStore App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AuthTypeSelector(),
    );
  }
}
