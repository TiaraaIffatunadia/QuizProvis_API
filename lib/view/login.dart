import 'package:flutter/material.dart';
import 'package:food_delivery/view/homepage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';

import '../view_model/userprovider.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> login(BuildContext context) async {
    final String username = usernameController.text;
    final String password = passwordController.text;

    if (username.length < 5) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Username harus minimal 5 karakter'),
            actions: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
      return;
    }

    if (password.length < 6) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Kata sandi harus minimal 6 karakter'),
            actions: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
      return;
    }

    final prefs = await SharedPreferences.getInstance();
    prefs.setString("username", username);
    prefs.setString("password", password);

    final authProvider = Provider.of<AuthProvider>(context, listen: false);
    authProvider.login();

    Navigator.pushNamed(context, '/Home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromARGB(255, 238, 239, 240) ,
      body: Center(
        child: Padding(

          padding: const EdgeInsets.all(15),
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logofoodev-red.png',
                width: 150,
                height: 150,
              ),
              SizedBox(height: 20),
              Text(
                "Login",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Color(0xffEA2224)),
              ),
              SizedBox(height: 30),
              TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  labelText: 'Username',
                  prefixIcon: Icon(Icons.account_circle, color: Color(0xffEA2224)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffEA2224)),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffEA2224)),
                  ),
                  labelStyle: TextStyle(color: Color(0xffEA2224)), 
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock, color: Color(0xffEA2224)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffEA2224)),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffEA2224)),
                  ),
                  labelStyle: TextStyle(color: Color(0xffEA2224)),
                ),
                obscureText: true,
              ),
              SizedBox(height: 30),
              ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),
                ),);
                // register(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffEA2224),
                padding: EdgeInsets.symmetric(horizontal: 45),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                "Login",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
            SizedBox(height: 15),
            Text("Tiara Iffatunadia - 2317414")
            ],
          ),
        ),
      ),
    );
  }
}