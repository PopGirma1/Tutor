import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'signup_screen.dart';
//import 'home_screen.dart';
import '../models/authentication.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final GlobalKey<FormState> _formKey = GlobalKey();

  Map<String, String> _authData = {
    'email' : '',
    'password': ''
  };

  void _showErrorDialog(String msg)
  {
    showDialog(
        context: context,
      builder: (ctx) => AlertDialog(
        title: Text('An Error Occured'),
        content: Text(msg),
        actions: <Widget>[
          FlatButton(
            child: Text('Okay'),
            onPressed: (){
              Navigator.of(ctx).pop();
            },
          )
        ],
      )
    );
  }

  Future<void> _submit() async
  {
    if(!_formKey.currentState.validate())
      {
        return;
      }
    _formKey.currentState.save();

    try{
      await Provider.of<Authentication>(context, listen: false).logIn(
          _authData['email'],
          _authData['password']
      );
    //  Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);

    } catch (error)
    {
      var errorMessage = 'Authentication Failed. Please try again later.';
      _showErrorDialog(errorMessage);
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //................................................................................
      resizeToAvoidBottomInset : false,
      //................................................................................

      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text('Login Page'),
        actions: <Widget>[
          FlatButton(
            child: Row(
              children: <Widget>[
                Text('Signup'),
                Icon(Icons.person_add)
              ],
            ),
            textColor: Colors.white,
            onPressed: (){
              Navigator.of(context).pushReplacementNamed(SignupScreen.routeName);
            },
          )
        ],
      ),


      body: Stack(
        children: <Widget>[

          //.................................

          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                 Colors.black12,
                  Colors.white
                ]
              )
            ),
          ),

          //..........................
          Center(

            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Container(


                color: Colors.black12,

//                margin: EdgeInsets.all(50),

                height: 260,
                width: 300,
                padding: EdgeInsets.all(16),
                child: Form(


                  key: _formKey,
                  child: SingleChildScrollView(

                    physics : ClampingScrollPhysics(),

                    child: Column(

                      children: <Widget>[
                        //email
                        TextFormField(
                          decoration: InputDecoration(

                            hintText: 'Email',
                            icon: Icon(
                              Icons.person,
                              color:Colors.grey,
                            ),

                            // border: new OutlineInputBorder(
                            //   borderRadius: new BorderRadius.circular(25.0),
                            //   borderSide: new BorderSide(
                            //   ),
                            // ),

                          ),
                          keyboardType: TextInputType.emailAddress,
                          validator: (value)
                          {
                            if(value.isEmpty || !value.contains('@'))
                              {
                                return 'invalid email';
                              }
                            return null;
                          },
                          onSaved: (value)
                          {
                            _authData['email'] = value;
                          },
                        ),

                        //password
                        TextFormField(
                          decoration: InputDecoration(

                            hintText: 'Password',
                            icon: Icon(
                              Icons.lock,
                              color:Colors.grey,
                            ),
                            suffixIcon: Icon(
                              Icons.visibility,
                              color:Colors.grey,
                            ),


                            //
                            // border: new OutlineInputBorder(
                            //   borderRadius: new BorderRadius.circular(25.0),
                            //   borderSide: new BorderSide(
                            //   ),
                            // ),

                          ),




                          obscureText: true,
                          validator: (value)
                          {
                            if(value.isEmpty || value.length<=5)
                              {
                                return 'invalid password';
                              }
                            return null;
                          },
                          onSaved: (value)
                          {
                            _authData['password'] = value;
                          },
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        RaisedButton(
                          child: Text(
                            'Submit'
                          ),
                          onPressed: ()
                          {
                            _submit();
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          color: Colors.blue,
                          textColor: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
