import 'package:facebook/tabs/facebookhome.dart';
import 'package:facebook/tabs/marketplace.dart';
import 'package:facebook/tabs/notifications.dart';
import 'package:facebook/tabs/settings.dart';
import 'package:facebook/tabs/videoscreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 52, 51, 51),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 52, 51, 51),
          title: const Text('facebook',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white,
                ),
                child:const Center(child:Icon(Icons.add,size: 20,)),
              
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(Icons. search,color: Colors.white,),
            ),
            const Padding(
              padding:  EdgeInsets.only(right: 10),
              child: Icon(Icons.chat_rounded,color: Colors.white,),
            ),
          ],
        ),
        body: const Column(
          children: [
            TabBar(
              unselectedLabelColor: Colors.white,
              indicatorWeight: 2.0,
              labelColor: Colors.blue, 
              indicatorColor: Colors.blue,
                        tabs:[ 
            Tab(
              icon: Icon(Icons.home,),
              
            ),
            Tab(
              icon: Icon(Icons.live_tv_outlined,),
            ),
            Tab(
              icon: Icon(Icons.store,),
            ),
            Tab(
              icon: Icon(Icons.notifications,),
            ),
            Tab(
              icon: Icon(Icons.menu,),
            ),
            ]
            ),
            Expanded(
              child: TabBarView(
                children: [
                  FacebookHomeScreen(),
                  VideoScreen(),
                  MarketScreen(),
                  NotificationScreen(),
                  SettingsScreen(),
                ]),
            )
          ],
        ),
      ),
    );
  }
}