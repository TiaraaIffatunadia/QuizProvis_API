import 'package:flutter/material.dart';
import 'package:food_delivery/view/login.dart';
import 'package:food_delivery/view_reg/api_reg.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final registerViewModel = Provider.of<RegisterViewModel>(context, listen: false);
    return Scaffold(
      backgroundColor:Colors.white ,
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
                "Register",
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
              onPressed: () async {
                var response = await registerViewModel.registerUser(
                    username: usernameController.text,
                    password: passwordController.text,
                  );
                  if (response.statusCode == 200) {
                    registerViewModel.register();
                    Navigator.pushNamed(context, '/Home');
                  } else {
                    print("Unexpected status code: ${response.statusCode}");
                  }
                },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffEA2224),
                padding: EdgeInsets.symmetric(horizontal: 45),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                "Register",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
            SizedBox(height: 20,),
            Text(
          "Sudah punya akun?",
          style: TextStyle(color: Colors.black, fontSize: 14, fontFamily: 'Raleway',
            fontWeight: FontWeight.w500, height: 0,
          ),),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),
                ),);
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
            SizedBox(height: 15,),
            Text("Tiara Iffatunadia - 2317414")
            ],
          ),
        ),
      ),
    );
  }
}