import 'package:fiestapp/router.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(title: 'FiestApp'),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Appliquer Poppins partout dans l'app
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(
            context,
          ).textTheme, // <-- important pour l’héritage des styles
        ),
      ),
      //theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      body: MaterialApp.router(
        routerConfig: router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
