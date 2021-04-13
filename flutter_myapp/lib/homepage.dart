import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'CallContact.dart';
//import 'Screens/Login/login_screen.dart';
import 'callRegistration.dart';
import 'hometoptabs.dart';
import 'gamestoptabs.dart';
import 'moviestoptabs.dart';
import 'bookstoptabs.dart';
//import 'musictoptabs.dart';

class HomePage extends StatefulWidget {
  final Widget child;
  HomePage({Key key, this.child}) : super(key: key);
  _HomePageState createState() => _HomePageState();
}

Color PrimaryColor =  Color(0xff109618);

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
          appBar: AppBar(
           // backgroundColor: Color(0xff109618),
            backgroundColor: PrimaryColor,
            title: Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Tutor(),
            ),
            bottom: TabBar(
              isScrollable: true,
              indicatorColor: Colors.white,
              indicatorWeight: 6.0, 
               onTap: (index){
                 setState(() {
                  switch (index) {
                    case 0:
                      PrimaryColor= Color(0xffff5722); //0xffff5722
                      break;
                      case 1:
                      PrimaryColor= Color(0xffff5722);//0xff3f51b5
                      break;
                      case 2:
                      PrimaryColor= Color(0xffff5722);//0xffe91e63
                      break;
                      case 3:
                      PrimaryColor= Color(0xffff5722);//0xff9c27b0
                      break;
                      case 4:
                      PrimaryColor= Color(0xffff5722); //0xff2196f3
                      break;
                      case 5:
                      PrimaryColor= Color(0xffff5722); //0xff3f51b5
                      break;

                    default:
                  }
            });
              },
              tabs: <Widget>[
                Tab(
                  child: Container(
                    child: Text(
                      'HOME', //home...................HOME
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text(
                      'Learn Online',  // learn online....................GAMES
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text(
                      'Become a Tutor', //become a tutor...........MOVIES
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text(
                      'Read Books', //read books...................BOOK
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text(
                      'Contact us', // Account..........................Account
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                ),

                Tab(
                  child: Container(
                    child: Text(
                      ' Account', // Account..........................Account
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                ),



              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              HomeTopTabs(0xffff5722),//ff5722
              GamesTopTabs(0xffff5722),//3f51b5
              MoviesTopTabs(0xffff5722),//e91e63
              BooksTopTabs(0xffff5722), //9c27b0
              Callconatct(),
              callRegistration(),


            ],
          )),
    );
  }
}

Widget Tutor() {

  return Container(

    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          child: IconButton(
            icon: Icon(FontAwesomeIcons.bars),
          ),
        ),
        Container(
          // child: Image.asset(
          //   "asset/images/2.jpg",
          //   width: 200,
          //   height: 300,
          // ),


          child: Text(
            'Get Tutor ', // chat..........................MUSIC
            style: TextStyle(color: Colors.white, fontSize: 18.0),
          ),

        ),
        Container(
          child: IconButton(

              icon: Icon(
                FontAwesomeIcons.chalkboardTeacher,
                color: Colors.blueGrey,
              ),

            color: Colors.green,
            onPressed: () {

              Callconatct();
            },
          ),



          // child: Image.asset(
          //   "asset/images/signup_top.png",
          //   width: 200,
          //   height: 300,
          // ),
        ),
      ],
    ),
  );
}

