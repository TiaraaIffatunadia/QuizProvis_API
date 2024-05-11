import 'dart:js';
import 'package:flutter/material.dart';
import 'package:food_delivery/view/login.dart';
import 'package:food_delivery/view/register.dart';
import 'package:food_delivery/view/tambahdata.dart';
import 'package:food_delivery/view_model/userprovider.dart';
import 'package:food_delivery/view_reg/api_reg.dart';import 'package:provider/provider.dart';
import 'package:food_delivery/view/homepage.dart';
import 'package:food_delivery/view_model/listfooddetailprov.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthProvider()),
        ChangeNotifierProvider(create: (context) => listfooddetailprov()),
        ChangeNotifierProvider(create: (context) => RegisterViewModel())
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/register',
      routes: {
        //'/':(context) => WelcomeScreen(),
        '/Login': (context) => LoginPage(),
        '/Home': (context) => HomePage(),
        //'/chat': (context) => ChatPage(),
        //'/pemesanan': (context) => PemesananPage(),
        //'/add':(context) => AddData(),
        '/register': (context) => RegisterPage(),
      },
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Color(0xFF0472BC),
      ),
    );
  }
}