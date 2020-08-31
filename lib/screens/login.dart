import 'package:firstpage/screens/register.dart';
import 'package:firstpage/screens/home.dart';
import 'package:flutter/material.dart';


class Login extends StatefulWidget {

  final String title;

  Login({Key key, this.title}) : super(key: key);
  @override
  
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String user;
  String pass;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('login'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              child: TextField(
                onChanged: (value) {
                
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_box),
                  labelText: 'Username',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue[800]),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
              width: 250,
              padding: EdgeInsets.all(16),
            ),
             Container(
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    pass = value;
                  });
                },
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  labelText: 'Password',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue[800]),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
              width: 250,
              padding: EdgeInsets.all(16),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
           );
              },
              child: Text('Login'),
              color: Colors.blue[900],
              textColor: Colors.white,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Register()),
           );
              },
              child: Text('Register'),
              color: Colors.blue[900],
              textColor: Colors.white,
            ),
            
          ],
        ),
      ),
    );
  }
}

