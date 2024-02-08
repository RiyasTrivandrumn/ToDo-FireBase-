import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:to_do_firebase/Screens/logi_page.dart';
import 'package:to_do_firebase/Screens/register_page.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        '/':(context) => LoginView(),
        '/register':(context) => RegisterView()


      },
      theme: ThemeData(
        appBarTheme:AppBarTheme(
          backgroundColor:  Color(0xff0E1D3E),
          iconTheme: IconThemeData(color: Colors.white)
        ),
          textTheme: TextTheme(
              displayMedium: TextStyle(color: Colors.white, fontSize: 18),
              displaySmall: TextStyle(color:Colors.white70,fontSize: 14)),
              
          scaffoldBackgroundColor: Color(0xff0E1D3E)),
      debugShowCheckedModeBanner: false,
      
      
    );
  }
}
