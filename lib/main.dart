import 'package:flutter/material.dart';
import 'screens/login.dart';
import 'screens/register.dart';
import 'screens/home.dart';


//void main() {
// runApp((MyApp));
//}
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var materialApp2 = MaterialApp(
      title: "My Flutter App",
      routes: {
        '/': (context) => Login(),
        'register': (context) => Register(),
        'home': (context) => Home(),
      },
     
    );
    var materialApp = materialApp2;
    return materialApp;
  }
}
