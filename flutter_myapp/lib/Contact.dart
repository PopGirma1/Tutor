import 'package:flutter/material.dart';
import 'package:typicons_flutter/typicons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

///Class for adding contact details/profile details as a complete new page in your flutter app.
class ContactUs extends StatelessWidget {
  ///Logo of the Company/individual
  final ImageProvider logo;

  ///Ability to add an image
  final Image image;

  ///Phone Number of the company/individual
  final String phoneNumber;

  ///Text for Phonenumber
  final String phoneNumberText;

  ///Website of company/individual
  final String website;

  ///Text for Website
  final String websiteText;

  ///Email ID of company/individual
  final String email;

  ///Text for Email
  final String emailText;

  ///Twitter Handle of Company/Individual
  final String twitterHandle;

  ///Facebook Handle of Company/Individual
  final String facebookHandle;

  ///Linkedin URL of company/individual
  final String linkedinURL;

  ///Github User Name of the company/individual
  final String githubUserName;

  ///Name of the Company/individual
  final String companyName;

  ///Font size of Company name
  final double companyFontSize;

  ///TagLine of the Company or Position of the individual
  final String tagLine;

  ///Instagram User Name of the company/individual
  final String instagram;

  ///TextColor of the text which will be displayed on the card.
  final Color textColor;

  ///Color of the Card.
  final Color cardColor;

  ///Color of the company/individual name displayed.
  final Color companyColor;

  ///Color of the tagLine of the Company/Individual to be displayed.
  final Color taglineColor;

  /// font of text
  final String textFont;

  /// font of the company/individul to be displayed
  final String companyFont;

  /// font of the tagline to be displayed
  final String taglineFont;

  /// divider color which is placed between the tagline & contact informations
  final Color dividerColor;

  ///font weight for tagline and company name
  final FontWeight companyFontWeight;
  final FontWeight taglineFontWeight;
  /// avatar radius will place the circularavatar according to developer/UI need
  final double avatarRadius;

  ///Constructor which sets all the values.
  ContactUs({
    @required this.companyName,
    @required this.textColor,
    @required this.cardColor,
    @required this.companyColor,
    @required this.taglineColor,
    @required this.email,
    this.emailText,
    this.logo,
    this.image,
    this.phoneNumber,
    this.phoneNumberText,
    this.website,
    this.websiteText,
    this.twitterHandle,
    this.facebookHandle,
    this.linkedinURL,
    this.githubUserName,
    this.tagLine,
    this.instagram,
    this.companyFontSize,
    this.textFont,
    this.companyFont,
    this.taglineFont,
    this.dividerColor,
    this.companyFontWeight,
    this.taglineFontWeight,
    this.avatarRadius, String instagramUserName,
  });

  showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          elevation: 8.0,
          contentPadding: EdgeInsets.all(18.0),
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          content: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(
                  onTap: () => launch('tel:' + phoneNumber),
                  child: Container(
                    height: 50.0,
                    alignment: Alignment.center,
                    child: Text('Call'),
                  ),
                ),
                Divider(),
                InkWell(
                  onTap: () => launch('sms:' + phoneNumber),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50.0,
                    child: Text('Message'),
                  ),
                ),
                Divider(),
                InkWell(
                  onTap: () => launch('https://wa.me/' + phoneNumber),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50.0,
                    child: Text('WhatsApp'),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(


      child: SingleChildScrollView(


        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Visibility(
              visible: logo != null,
              child: CircleAvatar(
                radius: avatarRadius ?? 50.0,
                backgroundImage: logo,
              ),
            ),

            Visibility(
              visible: website != null,
              child: Card(
                shadowColor: Colors.red,

                clipBehavior: Clip.antiAlias,
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                color: cardColor,
                child: ListTile(
                  leading: Icon(Typicons.link),
                  title: Text(
                    websiteText ?? 'Website',
                    style: TextStyle(
                      color: textColor,
                      fontFamily: textFont,
                    ),
                  ),
                  onTap: () => launch(website),
                ),
              ),


            ),
            Visibility(

              visible: phoneNumber != null,
              child: Card(

                shadowColor: Colors.red,
                clipBehavior: Clip.antiAlias,
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                color: cardColor,
                child: ListTile(
                  leading: Icon(Typicons.phone),
                  title: Text(
                    phoneNumberText ?? 'Phone Number',
                    style: TextStyle(
                      color: textColor,
                      fontFamily: textFont,
                    ),
                  ),
                  onTap: () => showAlert(context),
                ),
              ),
            ),
            Card(
              shadowColor: Colors.red,

              clipBehavior: Clip.antiAlias,
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
              color: cardColor,
              child: ListTile(
                leading: Icon(Typicons.mail),
                title: Text(
                  emailText ?? 'Email ID',
                  style: TextStyle(
                    color: textColor,
                    fontFamily: textFont,
                  ),
                ),
                onTap: () => launch('mailto:' + email),
              ),
            ),
            Visibility(
              visible: twitterHandle != null,
              child: Card(
                shadowColor: Colors.red,


                clipBehavior: Clip.antiAlias,
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                color: cardColor,
                child: ListTile(
                  leading: Icon(Typicons.social_twitter),
                  title: Text(
                    'Twitter',
                    style: TextStyle(
                      color: textColor,
                      fontFamily: textFont,
                    ),
                  ),
                  onTap: () => launch('https://twitter.com/' + twitterHandle),
                ),
              ),
            ),
            Visibility(
              visible: facebookHandle != null,
              child: Card(
                shadowColor: Colors.red,

                clipBehavior: Clip.antiAlias,
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                color: cardColor,
                child: ListTile(
                  leading: Icon(Typicons.social_facebook),
                  title: Text(
                    'Facebook',
                    style: TextStyle(
                      color: textColor,
                      fontFamily: textFont,
                    ),
                  ),
                  onTap: () =>
                      launch('https://www.facebook.com/' + facebookHandle),
                ),
              ),
            ),
            Visibility(
              visible: instagram != null,
              child: Card(

                shadowColor: Colors.red,

                clipBehavior: Clip.antiAlias,
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                color: cardColor,
                child: ListTile(
                  leading: Icon(Typicons.social_instagram),
                  title: Text(
                    'Instagram',
                    style: TextStyle(
                      color: textColor,
                      fontFamily: textFont,
                    ),
                  ),
                  onTap: () => launch('https://instagram.com/' + instagram),
                ),
              ),
            ),
            Visibility(
              visible: githubUserName != null,
              child: Card(
                shadowColor: Colors.red,

                clipBehavior: Clip.antiAlias,
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                color: cardColor,
                child: ListTile(
                  leading: Icon(Typicons.social_github),
                  title: Text(
                    'Github',
                    style: TextStyle(
                      color: textColor,
                      fontFamily: textFont,
                    ),
                  ),
                  onTap: () => launch('https://github.com/' + githubUserName),
                ),
              ),
            ),
            Visibility(
              visible: linkedinURL != null,
              child: Card(
                shadowColor: Colors.red,

                clipBehavior: Clip.antiAlias,
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                color: cardColor,
                child: ListTile(
                  leading: Icon(Typicons.social_linkedin),
                  title: Text(
                    'Linkedin',
                    style: TextStyle(
                      color: textColor,
                      fontFamily: textFont,
                    ),
                  ),
                  onTap: () => launch(linkedinURL),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

