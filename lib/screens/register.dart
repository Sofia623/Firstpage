import 'package:flutter/material.dart';
import 'package:firstpage/screens/login.dart';

 class Register extends StatefulWidget {
   @override
   _RegisterState createState() => _RegisterState();
 }

 class _RegisterState extends State<Register> {
   String user;
   String pass;
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text("register"),
       ),
       body: Center(
         child: Column(
           children: <Widget>[
             Container(
               child: TextField(
                 onChanged: (value) {},
                 decoration: InputDecoration(
                   labelText: 'Name',
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
                onChanged: (value) {},
                decoration: InputDecoration(
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
            Container(
              child: TextField(
                keyboardType: TextInputType.number,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Phone number',
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
                Navigator.pop(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
              child: Text('submit'),
              color: Colors.blue[900],
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
   }
 }
