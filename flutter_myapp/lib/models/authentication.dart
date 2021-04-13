import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'http_exception.dart';

class Authentication with ChangeNotifier
{

  Future<void> signUp(String email, String password) async
  {
 //   const url = 'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=[AIzaSyDuhr79mCAwcbdwmBA_elhNICYscX-Bc28 ]';

    final url =Uri.parse('https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyDbMXnvoF1G7n2dwWiRs0k6B7yNdICzXWM');


    try{
      final response = await http.post(url, body: json.encode(
          {
            'email' : email,
            'password' : password,
            'returnSecureToken' : true,
          }
      ));
      final responseData = json.decode(response.body);
//      print(responseData);
      if(responseData['error'] != null)
      {
        // throw HttpException(responseData['error']['message']);

        throw Exception("you have meade it by now ");

      }
      //.......................................................
     else{

       throw Exception("you have made it by now");

      }
     //.......................................................
    }

    catch (error)
    {
      throw error;
    }

  }

  Future<void> logIn(String email, String password) async
  {
    final url =Uri.parse('https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyDbMXnvoF1G7n2dwWiRs0k6B7yNdICzXWM ');

    try{
      final response = await http.post(url, body: json.encode(
          {
            'email' : email,
            'password' : password,
            'returnSecureToken' : true,
          }
      ));
      final responseData = json.decode(response.body);
      if(responseData['error'] != null)
      {

        // throw HttpException(responseData['error']['message']);
        //
        throw Exception("you have meade it by now ");


      }
//      print(responseData);

    else{

      throw Exception("you have meade it by now ");
      }

    } catch(error)
    {
      throw Exception("you have meade it by now ");
    }

  }
}
