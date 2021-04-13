import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/authentication.dart';

//import 'home_screen.dart';
import 'login_screen.dart';

class SignupScreen extends StatefulWidget {
  static const routeName = '/signup';
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  final GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController _passwordController = new TextEditingController();

  Map<String, String> _authData = {
    'email' : '',
    'password' : ''
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
      await Provider.of<Authentication>(context, listen: false).signUp(
          _authData['email'],
          _authData['password']
      );
      //Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);

    } catch(error)
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

        title: Text('Signup page '),

        actions: <Widget>[
          FlatButton(
            child: Row(
              children: <Widget>[
                Text('Login'),
                Icon(Icons.person)
              ],
            ),
            textColor: Colors.white,
            onPressed: (){
              Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
            },
          )
        ],
      ),


      body: Stack(
        children: <Widget>[
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
          Center(

            child: Card(

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Container(
                height: 300,
                color: Colors.black12,
                width: 300,
                padding: EdgeInsets.all(16),
                child: Form(
                  key: _formKey,
                  child: SingleChildScrollView(


                    //.......null
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
                            //
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

                            // border: new OutlineInputBorder(
                            //   borderRadius: new BorderRadius.circular(25.0),
                            //
                            // ),

                          ),
                          obscureText: true,
                          controller: _passwordController,
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

                        //Confirm Password

                        TextFormField(

                          decoration: InputDecoration(

                            hintText: 'Confirm Password',
                            icon: Icon(
                              Icons.lock,
                              color:Colors.grey,
                            ),
                            suffixIcon: Icon(
                              Icons.visibility,
                              color:Colors.grey,
                            ),

                            // border: new OutlineInputBorder(
                            //   borderRadius: new BorderRadius.circular(25.0),
                            //
                            // ),

                          ),
                          obscureText: true,
                          validator: (value)
                          {
                            if(value.isEmpty || value != _passwordController.text)
                            {
                              return 'invalid password';
                            }
                            return null;
                          },
                          onSaved: (value)
                          {

                          },
                        ),


                        // Padding(
                        //   padding: EdgeInsets.only(top: 25.0),
                        //   child: new TextFormField(
                        //     decoration: new InputDecoration(
                        //         labelText: 'Password',
                        //         contentPadding: new EdgeInsets.only(bottom: 1.0)),
                        //     obscureText: true,
                        //     validator: (value) =>
                        //     value.isEmpty ? 'Password can\'nt be empty' : null,
                        //     // onSaved: (value) => _password = value,
                        //   ),
                        // ),



                        SizedBox(
                          height: 40,

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
