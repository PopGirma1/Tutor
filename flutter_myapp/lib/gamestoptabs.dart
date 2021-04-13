import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'gametopchartstabs.dart';


class GamesTopTabs extends StatefulWidget {
  int colorVal;
  GamesTopTabs(this.colorVal);
  _GamesTopTabsState createState() => _GamesTopTabsState();
}

class _GamesTopTabsState extends State<GamesTopTabs> with SingleTickerProviderStateMixin{
  TabController _tabController;

  @override
     void initState() {
       super.initState();
      _tabController = new TabController(vsync: this, length: 8);
      _tabController.addListener(_handleTabSelection);
     }
     void _handleTabSelection() {
        setState(() {
          widget.colorVal=0xff3f51b5;
         });
     }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            isScrollable: true,
            indicatorWeight: 4.0,
            indicatorColor:Color(0xff3f51b5),
            unselectedLabelColor: Colors.grey,
             controller: _tabController,
            tabs: <Widget>[
              Tab(
                icon:Icon(FontAwesomeIcons.compass, color: _tabController.index == 0
                          ? Color( widget.colorVal)
                          : Colors.grey),
                child:Text('General Course',style: TextStyle( color: _tabController.index == 0    // for you page ......... general Course
                          ?  Color( widget.colorVal)
                          : Colors.grey)),
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.chartBar, color: _tabController.index == 1
                          ? Color( widget.colorVal)
                          : Colors.grey),
                child: Text('Grade',style: TextStyle( color: _tabController.index == 1   //Top Charts .....Grade
                          ?  Color( widget.colorVal)
                          : Colors.grey)),
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.plusSquare, color: _tabController.index == 2
                          ? Color( widget.colorVal)
                          : Colors.grey),
                child: Text('New',style: TextStyle( color: _tabController.index == 2
                          ?  Color( widget.colorVal)
                          : Colors.grey)),
              ),
              
              Tab(
                icon: Icon(FontAwesomeIcons.solidGem, color: _tabController.index == 4
                          ? Color( widget.colorVal)
                          : Colors.grey),
                child: Text('Accounting',style: TextStyle( color: _tabController.index == 4
                          ?  Color( widget.colorVal)
                          : Colors.grey)),
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.shapes, color: _tabController.index == 5
                          ? Color( widget.colorVal)
                          : Colors.grey),
                child: Text('Investing',style: TextStyle( color: _tabController.index == 5
                          ?  Color( widget.colorVal)
                          : Colors.grey)),
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.calendarDay, color: _tabController.index == 3
                          ? Color( widget.colorVal)
                          : Colors.grey),
                child: Text('Finance and Economics',style: TextStyle( color: _tabController.index == 3
                          ?  Color( widget.colorVal)
                          : Colors.grey)),
              ),
               Tab(
                icon: Icon(FontAwesomeIcons.solidBookmark, color: _tabController.index == 6
                          ? Color( widget.colorVal)
                          : Colors.grey),
                child: Text('Digital Marketing',style: TextStyle( color: _tabController.index == 6
                          ?  Color( widget.colorVal)
                          : Colors.grey)),
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.solidStar, color: _tabController.index == 7
                          ? Color( widget.colorVal)
                          : Colors.grey),
                child: Text('Ethical Hacking',style: TextStyle( color: _tabController.index == 7
                          ?  Color( widget.colorVal)
                          : Colors.grey)),
              ),
            ],
          ),
        ),


        body: TabBarView(
          controller: _tabController,
            children: <Widget>[


            //   Column(
            //   children: <Widget>[
            //     Center(
            //
            //       child: Text("General Course page"),
            //      heightFactor: 20,
            //      // child: family1(),
            //
            //     )
            //   ],
            // ),

              Container(

                // height: 200.0,
                // child: Center(child: Text('New')),

                child: family1(),

              ),




              GameTopChartsTabs(0xff3f51b5),
               Container(

              // height: 200.0,
              // child: Center(child: Text('New')),

                 child: family1(),

            ),
             Container(

              // height: 200.0,
              // child: Center(
              //     child: Text('Premium')),

               child: family1(),

            ),
             Container(

              // height: 200.0,
              // child: Center(child: Text('Category')),

               child: family1(),
            ),
             Container(


              // height: 200.0,
              // child: Center(child: Text('Events')),

               child: family1(),

            ),
             Container(


              // height: 200.0,
              // child: Center(child: Text('Editor Choice')),


               child: family1(),

            ),


             Container(

              // height: 200.0,
              // child: Center(child: Text('Family')),

               child: family1(),


            ),
            ],
          ),
      ),
    );
  }

  family1() {
    return Container(

      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          SizedBox(height: 40.0),
          ListTile(
            leading: Container(
              height: 100.0,
              width: 100.0,
              decoration: new BoxDecoration(
                image: DecorationImage(


                  image: new AssetImage('asset/images/11.jpg'),
                  fit: BoxFit.cover,

                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            title: Text(
              'Maths',
            ),
            subtitle: Text('maths'),
          ),
          SizedBox(height: 40.0),
          ListTile(
            leading: Container(
              height: 100.0,
              width: 100.0,
              decoration: new BoxDecoration(
                image: DecorationImage(
                  // image: new NetworkImage(
                  //     'https://lh3.googleusercontent.com/IUmxAtr8x20F50Rg0qFLPvN1KfGzB57wpRPzzcbx1Cy0tAbyPxR2HZIx8z3_ywSwkYV0=s180-rw'),
                  // fit: BoxFit.fill,


                  image: new AssetImage('asset/images/2.jpg'),
                  fit: BoxFit.cover,

                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            title: Text(
              'Science',
            ),
            subtitle: Text('Science'),
          ),
          SizedBox(height: 40.0),
          ListTile(
            leading: Container(
              height: 100.0,
              width: 100.0,
              decoration: new BoxDecoration(
                image: DecorationImage(
                  // image: new NetworkImage(
                  //     'https://lh3.googleusercontent.com/RHEi0Ned02-oGl6BJdvHNFiJFSX9ZCD2aFW4By_vOflNo0ton3QgQ90fZTk2b7tal6cR=s180-rw'),
                  // fit: BoxFit.fill,


                  image: new AssetImage('asset/images/11.jpg'),
                  fit: BoxFit.cover,

                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            title: Text(
              'Chemistry',
            ),
            subtitle: Text('Chemistry'),
          ),
          SizedBox(height: 40.0),
          ListTile(
            leading: Container(
              height: 100.0,
              width: 100.0,
              decoration: new BoxDecoration(
                image: DecorationImage(

                  // image: new NetworkImage(
                  //     'https://lh3.googleusercontent.com/6pAKrBga5LKR2Gz0Ag_VOpB7n2GfHvpdWFgLAlYUbgGZzWZQijTI0PS2k9H4HW3DbQ=s180-rw'),
                  // fit: BoxFit.fill,


                  image: new AssetImage('asset/images/2.jpg'),
                  fit: BoxFit.cover,

                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            title: Text(
              'Biology',
            ),
            subtitle: Text('Biology'),
          ),
        ],
      ),



    );
  }
}
