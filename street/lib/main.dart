import 'package:flutter/material.dart';
import './pages/main_list_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primaryColor: Colors.white,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70,
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text('7'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () => debugPrint('search button  is pressed.'),
            )
          ],
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.change_history)),
              // Tab(icon: Icon(Icons.directions_bike)),
              Tab(icon: Icon(Icons.change_history)),
            ],
          ),
        ),
        body: TabBarView(children: <Widget>[
          MainListView(),
          // Icon(
          //   Icons.change_history,
          //   size: 128.0,
          //   color: Colors.black12,
          // ),
          Icon(
            Icons.change_history,
            size: 128.0,
            color: Colors.black12,
          ),
          // Icon(
          //   Icons.change_history,
          //   size: 128.0,
          //   color: Colors.black12,
          // ),
          Icon(
            Icons.change_history,
            size: 128.0,
            color: Colors.black12,
          ),
        ]),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('Seacity',
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white60,fontSize: 17.0)),
                accountEmail: Text('Seacity@*****.com',style: TextStyle(color:Colors.white60)),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'http://cdn.hnbmc.com/headImg/1c8d58fc96714542ad2f4e44481a46fc.jpg'),
                ),
                decoration: BoxDecoration(
                  color: Colors.white60,
                  image: DecorationImage(
                      image: NetworkImage(
                          'http://m.hnbmc.com/test/songs/02c7d9561e6a4907893e4792cc27307e.jpeg'),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.black54.withOpacity(0.6),
                          BlendMode.hardLight)),
                ),
              ),
              ListTile(
                title: Text('消息', textAlign: TextAlign.left,style: TextStyle(fontWeight:FontWeight.bold),),
                trailing:
                    Icon(Icons.message, color: Colors.black12, size: 22.0),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                title: Text('喜欢', textAlign: TextAlign.left,style: TextStyle(fontWeight:FontWeight.bold),),
                trailing:
                    Icon(Icons.favorite, color: Colors.black12, size: 22.0),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                title: Text('设置', textAlign: TextAlign.left,style: TextStyle(fontWeight:FontWeight.bold),),
                trailing:
                    Icon(Icons.settings, color: Colors.black12, size: 22.0),
                onTap: () => Navigator.pop(context),
              )
            ],
          ),
        ),
        // bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}
