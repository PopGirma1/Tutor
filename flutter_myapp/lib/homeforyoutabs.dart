// ignore: avoid_web_libraries_in_flutter
//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'CallContact.dart';
import 'Contact.dart';

class HomeForYouTabs extends StatefulWidget {
  final Widget child;

  final Widget label;

  HomeForYouTabs({Key key, this.child, this.label}) : super(key: key);

  _HomeForYouTabsState createState() => _HomeForYouTabsState();
}

class _HomeForYouTabsState extends State<HomeForYouTabs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          SizedBox(
            height: 10.0,
          ),
          ImageContainer(),
          SizedBox(
            height: 20.0,
          ),
          InstalledApps(),
          SizedBox(
            height: 20.0,
          ),
          RecommendedApps(),
        ],
      ),
    );
  }

  Widget ImageContainer() {

    return Container(
          height: 250.0,
          width: 320.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'asset/images/2.jpg'),
              fit: BoxFit.fill,
            ),
            shape: BoxShape.circle,
          ),



    //   height: 200.0,
    //   child: Image.network(
    //       'https://www.bluemoongame.com/wp-content/uploads/2018/12/Marvel_Strike_Force_Alliance_War_Update.png',
    //       fit: BoxFit.cover),

     );





  }


Widget RecommendedApps() {
    return Material(
      color: Colors.white,
      elevation: 14.0,
      shadowColor: Color(0x802196F3),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: labelContainer('Contact Us'),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: appsContainer(),
          ),
        ],
      ),
    );
  }

  Widget InstalledApps() {
    return Material(
      color: Colors.white,
      elevation: 14.0,
      shadowColor: Color(0x802196F3),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: labelContainer('HOW IT WORKS ? '),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: appsRecommendedContainer(),
          ),
        ],
      ),
    );
  }

  Widget labelContainer(String labelVal) {
    return Container(
      padding: EdgeInsets.all(9.0),

      color: Colors.black12,
      height: 100.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            labelVal,
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0, color: Colors.brown ,),
          ),
          Text(
            'Get Tutor',
            style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 18.0),
          ),
        ],
      ),
    );
  }

  Widget imageSection(String imageVal, String appVal,String rateVal) {
    return Column(
      children: <Widget>[
        Container(
          height: 100.0,
          width: 100.0,
          decoration: new BoxDecoration(
            image: DecorationImage(
              image: new NetworkImage(imageVal),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          appVal,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.0),
        ),
        SizedBox(
          height: 10.0,
        ),
        Row(children: <Widget>[
          Text(
          rateVal,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold,),
        ),
        Icon(FontAwesomeIcons.solidStar,size: 10.0,),
        ],)
      ],
    );
  }

    Widget appsRecommendedContainer() {
    return Container(

        height: 360.0,
        child: ListView(
          scrollDirection: Axis.horizontal,

          children: <Widget>[
           // labelContainer("pop"),  //..........................


            Container(

              margin: const EdgeInsets.only(left: 10.0, right: 10.0),
              // margin: const EdgeInsets.all(30.0),
              padding: EdgeInsets.all(16.0),
              width: 250,
              color: Colors.black12,
              child: InputDecorator(
                decoration: InputDecoration(
                  labelText: 'SEARCH BASED ON YOUR NEEDS',
                    labelStyle: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 20,
                    ),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: Text('After hitting the search button, you can filter the results to find your perfect tutor. You can filter by price, subject, grade level, and schedule',style: TextStyle(fontSize: 15, color: Colors.black),),
              ),
            ),


            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'MORE -->',
                    style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 18.0),
                  ),
                ],
              ),
            ),



            Container(
              margin: const EdgeInsets.only(left: 20.0, right: 20.0),

              // margin: const EdgeInsets.all(30.0),
              padding: EdgeInsets.all(16.0),
              width: 250,
              color: Colors.black12,
              child: InputDecorator(
                decoration: InputDecoration(
                  labelText: 'CHOOSE THE TUTOR YOU WANT',

                  labelStyle: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 20,
                  ),


                  // border: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(10.0),
                  // ),
                ),
                child: Text('Every tutors profile has a name, profile picture, education background, service price and elevator pitch as to why they are the best tutor for the subject you want help with. This makes it ideal for you to find the perfect tutor',style: TextStyle(fontSize: 15, color: Colors.black),),
              ),
            ),


            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'MORE -->',
                    style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 18.0),
                  ),
                ],
              ),
            ),



            Container(
              margin: const EdgeInsets.only(left: 20.0, right: 20.0),

                // margin: const EdgeInsets.all(30.0),
                padding: EdgeInsets.all(16.0),
              width: 250,
                color: Colors.black12,
              child: InputDecorator(
                decoration: InputDecoration(
                  labelText: 'After you get the tutor you like',

                  labelStyle: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 20,
                  ),


                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: Text('you just click a button to hire him/her and we will take care of the rest. In the rare case where you are not able to find the tutor you want we will personally find them for you. Just let us know',style: TextStyle(fontSize: 15, color: Colors.black),),
              ),
            ),



            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'MORE -->',
                    style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 18.0),
                  ),
                ],
              ),
            ),


            Container(
              margin: const EdgeInsets.only(left: 20.0, right: 20.0),
              // margin: const EdgeInsets.all(30.0),
              padding: EdgeInsets.all(16.0),
              width: 250,
              color: Colors.black12,
              child: InputDecorator(
                decoration: InputDecoration(
                  labelText: 'Only The Top Tutors',

                  labelStyle: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 20,
                  ),


                  // border: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(10.0),
                  // ),
                ),
                child: Text('Our tutors have scored 4.0 in 10th grade and 500+ in 12th grade National Exams. Moreover, we conduct a very rigorous screening and interviewing procedure to select on the very best',style: TextStyle(fontSize: 15, color: Colors.black),),
              ),
            ),


            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    '<--End',
                    style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 18.0),
                  ),
                ],
              ),
            ),


            Container(
              margin: const EdgeInsets.only(left: 20.0, right: 20.0),

              // margin: const EdgeInsets.all(30.0),
              padding: EdgeInsets.all(16.0),
              width: 250,
              color: Colors.black12,
              child: InputDecorator(

                decoration: InputDecoration(
                  labelText: 'Set your own terms',

                  labelStyle: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 25,
                  ),


                  // border: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(10.0),
                  // ),
                  //

                ),
                child: Text('Through our filter option, you get to choose how you want to pay: monthly or hourly, when you want to meet and who you want to hire by viewing our tutors background, bio and profile',style: TextStyle(fontSize: 15, color: Colors.black ),),
              ),
            ),



          ],


        ));
  }

  Widget appsContainer() {

    return Container(

        height: 160.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[

            imageSection(
                'https://lh3.googleusercontent.com/ZZPdzvlpK9r_Df9C3M7j1rNRi7hhHRvPhlklJ3lfi5jk86Jd1s0Y5wcQ1QgbVaAP5Q=s180-rw',
                'Faceebook','4.1'),

            SizedBox(
              width: 10.0,
            ),
            imageSection(

                'https://lh3.googleusercontent.com/00APBMVQh3yraN704gKCeM63KzeQ-zHUi5wK6E9TjRQ26McyqYBt-zy__4i8GXDAfeys=s180-rw',
                'Linkedin','4.6'),

            SizedBox(
              width: 10.0,
            ),
            imageSection(

                'https://lh3.googleusercontent.com/jcbqFma-5e91cY9MlEasA-fvCRJK493MxphrqbBd8oS74FtYg00IXeOAn0ahsLprxIA=s180-rw',
                'Netflix','4.8'),

            SizedBox(
              width: 10.0,
            ),
            imageSection(

                'https://lh3.googleusercontent.com/F5B6GGdo6tAVNApr2X2p35igQhYBouuPA3uuIu3LEPHsIl7JPMHA1sn4-5J2B78JWA=s180-rw',
                'Flutter','5.0'),

            SizedBox(
              width: 10.0,
            ),
            imageSection(

                'https://lh3.googleusercontent.com/uOjFCUkQ4w56akZTg_AAGYsyiFd1UB3-Rd8KYDoiIpD05VzkTz647PO3B_2v9sPg2BM=s180-rw',
                'Pinterest','4.9'),

            SizedBox(
              width: 10.0,
            ),
            imageSection(

                'https://lh3.googleusercontent.com/aYbdIM1abwyVSUZLDKoE0CDZGRhlkpsaPOg9tNnBktUQYsXflwknnOn2Ge1Yr7rImGk=s180-rw',
                'Instagram','4.8'),


          ],





        ));
  }




}




