import 'package:flutter/material.dart';

import 'Contact.dart';


class Callconatct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black12,

        body: ContactUs(
          logo: AssetImage('asset/images/2.jpg'),
          email: 'girmaytadesepop@gmail.com',
          companyName: 'PAPA',
          phoneNumber: '+251940651252',
          website: 'https://papawebDeveloper.com',
          githubUserName: 'popgirma1',
          linkedinURL: 'https://www.linkedin.com/in/girma-tadese-840041189/',
          tagLine: 'Flutter Developer',
          twitterHandle: '@rophidani',
          instagramUserName: 'Popgirma',
        ),
      ),
    );
  }
}
