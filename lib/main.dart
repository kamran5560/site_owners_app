import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'Sale_App_Screen/Business_Detials_Page.dart';
import 'Sale_App_Screen/Tech_sale_splachscreen.dart';
import 'Screens/SplachScreen.dart';
import 'Screens/Authorised.dart';
import 'Screens/Code_inactive_Screen.dart';
import 'Screens/Detials.dart';
import 'Screens/Home.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Editing()
      initialRoute: '/splach',
      routes: {
        // When navigating to the "/" route, build the HomeScreen widget.
        '/splach': (context) => Business_Detials_Page(),
        // When navigating to the "/second" route, build the SecondScreen widget.
      },
    );
  }
}
