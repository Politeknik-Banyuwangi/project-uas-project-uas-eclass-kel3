import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("Music - SliverAppBar",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      )),
                  background: Image(
                    image: AssetImage('assets/img/galaxy.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverPersistentHeader(
                pinned: true,
                // padding: new EdgeInsets.all(10.0),
                //
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    labelColor: Colors.black87,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      new Tab(icon: new Icon(Icons.audiotrack), text: "Songs"),
                      new Tab(icon: new Icon(Icons.collections), text: "Gallery"),
                      new Tab(icon: new Icon(Icons.playlist_play), text: "Playlist"),
                    ],
                  ),
                ),
              ),
            ];
          },

          body: TabBarView(
            children: [
              FirstScreen(),
              SecondScreen(),
              ThirdScreen()
            ],
          ),
          // body: Center(
          //   child: Text("belajar app bar"),
          // if(tab) ?
          // child: Text("belajar app bar")
          // :
          // child: Text("belajar app bar"),
          // ),
        ),
      ),
    );
  }
}

final List<String> entriSatu = <String>[
  'Lagu satu',
  'Lagu dua',
  'Lagu tiga',
  'Lagu empat',
  'Lagu lima',
  'Lagu enam',
  'Lagu tujuh',
  'Lagu delapan',
  'Lagu sembilan',
  'Lagu sepuluh',
  'Lagu sebelas',
  'Lagu duabelas',
];

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: ListView.builder(
              padding: const EdgeInsets.all(15),
              itemCount: entriSatu.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 50,
                  child: Text('${entriSatu[index]}', style: TextStyle(fontSize: 15.0)),
                );
              }),
        ));
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: GridView.count(
            // crossAxisSpacing: 5,
            // mainAxisSpacing: 5,
            crossAxisCount: 2,
            children: List.generate(10, (index) {
              return Container(
                margin: EdgeInsets.all(7),
                child: Container(
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/img/fatwa.jpg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              );
            }),
          ),
        ));
  }
}

final List<String> entriTiga = <String>[
  'Playlist satu',
  'Playlist dua',
  'Playlist tiga',
  'Playlist empat',
  'Playlist lima',
];

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: ListView.builder(
              padding: const EdgeInsets.all(15),
              itemCount: entriTiga.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 50,
                  child: Text('${entriTiga[index]}', style: TextStyle(fontSize: 15.0)),
                );
              }),
        ));
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);
  final TabBar _tabBar;

  double get minExtent => _tabBar.preferredSize.height;
  double get maxExtent => _tabBar.preferredSize.height;

  Widget build(BuildContext context, double shrinkOffset, bool overlabsContents) {
    return new Container(
      child: _tabBar,
    );
  }

  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
