import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'moviereleasetabs.dart';

class MoviesTopTabs extends StatefulWidget {
  int colorVal;
  MoviesTopTabs(this.colorVal);
  _MoviesTopTabsState createState() => _MoviesTopTabsState();
}

class _MoviesTopTabsState extends State<MoviesTopTabs>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 7);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {
      widget.colorVal = 0xffe91e63;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            isScrollable: true,
            indicatorWeight: 4.0,
            indicatorColor: Color(0xffe91e63),
            unselectedLabelColor: Colors.grey,
            controller: _tabController,
            tabs: <Widget>[
              Tab(
                icon: Icon(FontAwesomeIcons.compass,
                    color: _tabController.index == 0
                        ? Color(widget.colorVal)
                        : Colors.grey),
                child: Text('English',
                    style: TextStyle(
                        color: _tabController.index == 0
                            ? Color(widget.colorVal)
                            : Colors.grey)),
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.tv,
                    color: _tabController.index == 1
                        ? Color(widget.colorVal)
                        : Colors.grey),
                child: Text('Maths',
                    style: TextStyle(
                        color: _tabController.index == 1
                            ? Color(widget.colorVal)
                            : Colors.grey)),
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.solidStar,
                    color: _tabController.index == 2
                        ? Color(widget.colorVal)
                        : Colors.grey),
                child: Text('Physical',
                    style: TextStyle(
                        color: _tabController.index == 2
                            ? Color(widget.colorVal)
                            : Colors.grey)),
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.biohazard,
                    color: _tabController.index == 3
                        ? Color(widget.colorVal)
                        : Colors.grey),
                child: Text('Biology',
                    style: TextStyle(
                        color: _tabController.index == 3
                            ? Color(widget.colorVal)
                            : Colors.grey)),
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.shapes,
                    color: _tabController.index == 4
                        ? Color(widget.colorVal)
                        : Colors.grey),
                child: Text('Chemistry',
                    style: TextStyle(
                        color: _tabController.index == 4
                            ? Color(widget.colorVal)
                            : Colors.grey)),
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.film,
                    color: _tabController.index == 5
                        ? Color(widget.colorVal)
                        : Colors.grey),
                child: Text('Technology',
                    style: TextStyle(
                        color: _tabController.index == 5
                            ? Color(widget.colorVal)
                            : Colors.grey)),
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.home,
                    color: _tabController.index == 6
                        ? Color(widget.colorVal)
                        : Colors.grey),
                child: Text('Social Subjects',
                    style: TextStyle(
                        color: _tabController.index == 6
                            ? Color(widget.colorVal)
                            : Colors.grey)),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            Container(
              height: 200.0,
              child: Center(child: Text('English')),
            ),
            Container(
              height: 200.0,
              child: Center(child: Text('Maths')),
            ),
             Container(
              height: 200.0,
              child: Center(child: Text('Physics')),
            ),


         //   MovieReleaseTabs(),


             Container(
              height: 200.0,
              child: Center(child: Text('Biology')),
            ),
            Container(
              height: 200.0,
              child: Center(child: Text('Chemistry')),
            ),
            Container(
              height: 200.0,
              child: Center(child: Text('Technolgy')),
            ),


            Container(
              height: 200.0,
              child: Center(child: Text('Social Subjects')),
            ),


          ],
        ),
      ),
    );
  }
}
