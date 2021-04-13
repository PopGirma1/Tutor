import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GameTopChartsTabs extends StatefulWidget {
  int colorVal;
  GameTopChartsTabs(this.colorVal);

  _GameTopChartsTabsState createState() => _GameTopChartsTabsState();
}

class _GameTopChartsTabsState extends State<GameTopChartsTabs>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 14);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {
      widget.colorVal = 0xff3f51b5;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xffEFF0F1),
      elevation: 14.0,
      shadowColor: Color(0x802196F3),
      child: Padding(
        padding: EdgeInsets.only(top: 32.0, left: 8.0, right: 8.0),
        child: innerNestedTabs(),
      ),
    );
  }

  Widget innerNestedTabs() {
    return DefaultTabController(
      length: 13,
      child: new Scaffold(
        appBar: new PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: new Container(
            child: new SafeArea(
              child: Column(
                children: <Widget>[
                  new Expanded(child: new Container()),
                  new TabBar(
                    isScrollable: true,
                    controller: _tabController,
                    labelPadding: EdgeInsets.all(10.0),
                    indicatorColor: Color(widget.colorVal),
                    indicatorWeight: 5.0,
                    tabs: [
                      Text("Grade 1",
                          style: TextStyle(
                              color: _tabController.index == 0
                                  ? Color(widget.colorVal)
                                  : Colors.black)),
                      Text("Grade 2",
                          style: TextStyle(
                              color: _tabController.index == 1
                                  ? Color(widget.colorVal)
                                  : Colors.black)),
                      Text("Grade 3",
                          style: TextStyle(
                              color: _tabController.index == 2
                                  ? Color(widget.colorVal)
                                  : Colors.black)),
                      Text("Grade 4",
                          style: TextStyle(
                              color: _tabController.index == 3
                                  ? Color(widget.colorVal)
                                  : Colors.black)),
                      Text("Grade 5",
                          style: TextStyle(
                              color: _tabController.index == 4
                                  ? Color(widget.colorVal)
                                  : Colors.black)),

                      Text("Grade 6",
                          style: TextStyle(
                              color: _tabController.index == 5
                                  ? Color(widget.colorVal)
                                  : Colors.black)),

                      Text("Grade 7",
                          style: TextStyle(
                              color: _tabController.index == 6
                                  ? Color(widget.colorVal)
                                  : Colors.black)),

                      Text("Grade 8",
                          style: TextStyle(
                              color: _tabController.index == 7
                                  ? Color(widget.colorVal)
                                  : Colors.black)),

                      Text("Grade 9",
                          style: TextStyle(
                              color: _tabController.index == 8
                                  ? Color(widget.colorVal)
                                  : Colors.black)),
                      Text("Grade 10",
                          style: TextStyle(
                              color: _tabController.index == 9
                                  ? Color(widget.colorVal)
                                  : Colors.black)),
                      Text("Grade 11",
                          style: TextStyle(
                              color: _tabController.index == 10
                                  ? Color(widget.colorVal)
                                  : Colors.black)),
                      Text("Grade 12",
                          style: TextStyle(
                              color: _tabController.index == 11
                                  ? Color(widget.colorVal)
                                  : Colors.black)),
                      Text("Collage",
                          style: TextStyle(
                              color: _tabController.index == 12
                                  ? Color(widget.colorVal)
                                  : Colors.black)),
                      Text("University",
                          style: TextStyle(
                              color: _tabController.index == 13
                                  ? Color(widget.colorVal)
                                  : Colors.black)),









                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        body: new TabBarView(
          controller: _tabController,
          children: <Widget>[
            TopFreeApps(),
            Container(
              // height: 200.0,
              // child: Center(child: Text('Grade 2')),

              child: TopFreeApps(),

            ),
            Container(
              // height: 200.0,
              // child: Center(child: Text('Grade 3')),

              child: TopFreeApps(),

            ),
            Container(
              // height: 200.0,
              // child: Center(child: Text('Grade 4')),

              child: TopFreeApps(),

            ),
            Container(
              // height: 200.0,
              // child: Center(child: Text('Grade 5')),

              child: TopFreeApps(),

            ),

            Container(
              // height: 200.0,
              // child: Center(child: Text('Grade 6')),

              child: TopFreeApps(),

            ),
            Container(
              // height: 200.0,
              // child: Center(child: Text('Grade 7')),
              child: TopFreeApps(),

            ),
            Container(
              // height: 200.0,
              // child: Center(child: Text('Grade 8')),

              child: TopFreeApps(),

            ),
            Container(
              // height: 200.0,
              // child: Center(child: Text('Grade 9')),
              child: TopFreeApps(),

            ),

            Container(
              // height: 200.0,
              // child: Center(child: Text('Grade 10')),

              child: TopFreeApps(),

            ),
            Container(
              // height: 200.0,
              // child: Center(child: Text('Grade 11')),

              child: TopFreeApps(),
            ),
            Container(
              // height: 200.0,
              // child: Center(child: Text('Grade 12')),

              child: TopFreeApps(),

            ),


            Container(
              // height: 200.0,
              // child: Center(child: Text('Collage')),

              child: TopFreeApps(),


            ),


            Container(
                child: TopFreeApps(),
            ),




          ],
        ),
      ),
    );
  }

  Widget TopFreeApps() {
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
