import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late TabController Controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.deepPurple,
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.deepPurple,
            leading: Icon(Icons.menu),
            title: Center(child: Text("Fitness App")),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Icon(Icons.notifications),
              ),
            ],
            bottom: TabBar(
              controller: Controller,
              tabs: [
                Tab(
                  text: "ABC",
                ),
                Tab(
                  text: "ABC",
                ),
                Tab(
                  text: "ABC",
                ),
                Tab(
                  text: "ABC",
                ),
              ],
            ),
          ),
          body: HomePage(),
          extendBody: true,
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add),
            backgroundColor: Colors.pinkAccent,
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(0.0),
              topRight: Radius.circular(0.0),
            ),
            child: BottomAppBar(
              shape: CircularNotchedRectangle(),
              notchMargin: 7,
              child: Container(
                height: 65,
                color: Colors.deepPurple,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MaterialButton(
                          onPressed: () {
                            setState(() {});
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.home,
                                color: Colors.white,
                              ),
                              Text(
                                "Home",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        MaterialButton(
                          onPressed: () {
                            setState(() {});
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.chat_outlined, color: Colors.white),
                              Text(
                                "Chats",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MaterialButton(
                          onPressed: () {
                            setState(() {});
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.person, color: Colors.white),
                              Text(
                                "Profile",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        MaterialButton(
                          onPressed: () {
                            setState(() {});
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.settings, color: Colors.white),
                              Text(
                                "Settings",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
