import 'package:flutter/material.dart';

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Tab Bar"),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: Container(
              color: Colors.white54,
              height: 50,
              child: TabBar(
                  indicator: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.tab,

                  tabs: [
                Tab(icon: Icon(Icons.home),text: "Home",),
                Tab(icon: Icon(Icons.person),text: "Profile",),
                Tab(icon: Icon(Icons.settings),text: "Settings",),
              ]),
            ),
          ),
        ),
        body: TabBarView(children: [
          Center(child: Text("Home"),),
          Center(child: Text("Profile"),),
          Center(child: Text("Settings"),),
        ]),
      ),
    );
  }
}
