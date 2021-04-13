import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//import 'screens/home_screen.dart';
import 'screens/login_screen.dart';
import 'screens/signup_screen.dart';
import 'models/authentication.dart';

void main() => runApp(callRegistration());

// ignore: camel_case_types
class callRegistration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(

      providers: [
        ChangeNotifierProvider.value(
          value: Authentication(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,      // to disable the debag

        title: 'Login App',

        theme: ThemeData(
          primaryColor: Colors.blueAccent,
        ),


       home: LoginScreen(),
        routes: {
          SignupScreen.routeName: (ctx)=> SignupScreen(),
          LoginScreen.routeName: (ctx)=> LoginScreen(),
         // HomeScreen.routeName: (ctx)=> HomeScreen(),
        },
      ),
    );
  }
}
