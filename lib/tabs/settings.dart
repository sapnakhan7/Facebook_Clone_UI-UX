import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
   List<String> images = [
    'assets/p4.jpeg',
    'assets/p2.jpeg',
    'assets/p3.jpeg',
    'assets/p1.jpeg',
    'assets/p5.jpeg',
    'assets/p6.jpeg',
    'assets/p7.jpeg',
    'assets/p8.jpeg',
    'assets/p9.jpeg',
    'assets/p10.jpeg',
    'assets/p11.jpeg',
    'assets/p12.jpeg',
    'assets/p13.jpeg',
    'assets/p14.jpeg',
    'assets/p15.jpeg',
  ];
    List<String> Names = [
    'Guria',
    'sapna',
    'taiba',
    'alia',
    'nadia',
    'sara',
    'ali',
    'safa',
    'rida',
    'nimi',
    'isha',
    'ravi',
    'ali',
    'safa',
    'rida',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 53, 53, 53),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(width: 10,),
                Text('Menu',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
                SizedBox(width: 220,),
                Icon(Icons.settings,size: 25,color: Colors.white,),
                SizedBox(width: 10,),
                Icon(Icons.search,size: 25,color: Colors.white,),
              ],
            ),
            SizedBox(height: 10,),
            Container(
              width: 360,
              height: 170,
              decoration: BoxDecoration(
                color:  const Color.fromARGB(255, 75, 75, 75),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset('assets/profile.png',width: 60,height: 60,)),
                          SizedBox(width: 10,),
                          Text('Sapna Khan',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                          SizedBox(width: 120,),
                          
                          Icon(Icons.arrow_drop_down_circle_outlined,color: Colors.white),
                          
                      ],
                    ),
                  ),
                  Divider(thickness: 1,color: Colors.white,),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 48, 48, 48),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Center(child: Icon(Icons.add,color: Color.fromARGB(255, 255, 255, 255))),
                            ),
                            SizedBox(width: 15,),
                            Text('Create New Profile or Page',style: TextStyle(color: Color.fromARGB(255, 201, 199, 199)),),
                    
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(right: 250),
              child: Text('Your Shortcuts',style: TextStyle(color: Colors.white,),),
            ),
            SizedBox(height: 20,),
            Container(
                        height: 90,
                        width: 374,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: images.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Stack(
                                    children: [
                                      CircleAvatar(
                                        backgroundImage: AssetImage(images[index]),
                                      ),
                                      index == 0
                                          ? Positioned(
                                              bottom: 0.5,
                                              right: 0,
                                            child: Container(
                                              width: 20,
                                              height: 20,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.circular(50),
                                                ),
                                                child: const Icon(Icons.people,color: Colors.amber,size: 15,)),
                                          )
                                          : Positioned(
                                              bottom: 0,
                                              left: 22.5,
                                            child: Container(
                                              width: 20,
                                              height: 20,
                                                decoration: BoxDecoration(
                                                  
                                                  borderRadius: BorderRadius.circular(50),
                                                ),
                                                child: Image.asset('assets/messenger-Photoroom.png',fit: BoxFit.cover,),)
                                          )
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  Text(' ${Names[index]}',style: TextStyle(color: Colors.white),),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
        
                      SizedBox(
                        height: 10,
                      ),
                      Wrap(
                                spacing: 11.0,
                                runSpacing: 11.0,
                                children: [
                                  Container(
                                      width: 170,
                                      height: 80,
                                      decoration: BoxDecoration(
                                      color: const Color.fromARGB(255, 75, 75, 75),
                                      borderRadius: BorderRadius.circular(10),
                                ),
                              child: ListTile(
                                    leading: Icon(Icons.access_time,color: Colors.blue,size: 30,),
                                    title: Text('Memories',style: TextStyle(color: Colors.white,fontSize: 16,), ),),
                                      ),
                                      Container(
                                      width: 170,
                                      height: 80,
                                      decoration: BoxDecoration(
                                      color:const Color.fromARGB(255, 75, 75, 75),
                                      borderRadius: BorderRadius.circular(10),
                                ),
                              child: ListTile(
                                    leading: Icon(Icons.bookmark,color: Colors.blue,size: 30,),
                                    title: Text('Groups',style: TextStyle(color: Colors.white,fontSize: 16,), ),),
                                      ),
                                      Container(
                                      width: 170,
                                      height: 80,
                                      decoration: BoxDecoration(
                                      color: const Color.fromARGB(255, 75, 75, 75),
                                      borderRadius: BorderRadius.circular(10),
                                ),
                              child: ListTile(
                                    leading: Icon(Icons.group,color: Colors.blue,size: 30,),
                                    title: Text('Videos',style: TextStyle(color: Colors.white,fontSize: 16,), ),),
                                      ),
                                      Container(
                                      width: 170,
                                      height: 80,
                                      decoration: BoxDecoration(
                                      color: const Color.fromARGB(255, 75, 75, 75),
                                      borderRadius: BorderRadius.circular(10),
                                ),
                              child: ListTile(
                                    leading: Icon(Icons.video_library,color: Colors.blue,size: 30,),
                                    title: Text('MarketPlace',style: TextStyle(color: Colors.white,fontSize: 16,), ),),
                                      ),
                                      Container(
                                      width: 170,
                                      height: 80,
                                      decoration: BoxDecoration(
                                      color:const Color.fromARGB(255, 75, 75, 75),
                                      borderRadius: BorderRadius.circular(10),
                                ),
                              child: ListTile(
                                    leading: Icon(Icons.store,color: Colors.blue,size: 30,),
                                    title: Text('MarketPlace',style: TextStyle(color: Colors.white,fontSize: 16,), ),),
                                      ),
                                      Container(
                                      width: 170,
                                      height: 80,
                                      decoration: BoxDecoration(
                                      color: const Color.fromARGB(255, 75, 75, 75),
                                      borderRadius: BorderRadius.circular(10),
                                ),
                              child: ListTile(
                                    leading: Icon(Icons.person_add,color: Colors.blue,size: 30,),
                                    title: Text('Find Frineds',style: TextStyle(color: Colors.white,fontSize: 16,), ),),
                                      ),
                                      Container(
                                      width: 170,
                                      height: 80,
                                      decoration: BoxDecoration(
                                      color: const Color.fromARGB(255, 75, 75, 75),
                                      borderRadius: BorderRadius.circular(10),
                                ),
                              child: ListTile(
                                    leading: Icon(Icons.rss_feed,color: Colors.blue,size: 30,),
                                    title: Text('Feeds',style: TextStyle(color: Colors.white,fontSize: 16,), ),),
                                      ),
                                      Container(
                                      width: 170,
                                      height: 80,
                                      decoration: BoxDecoration(
                                      color: const Color.fromARGB(255, 75, 75, 75),
                                      borderRadius: BorderRadius.circular(10),
                                ),
                              child: ListTile(
                                    leading: Icon(Icons.event,color: Colors.blue,size: 30,),
                                    title: Text('Events',style: TextStyle(color: Colors.white,fontSize: 16,), ),),
                                      ),
                                      ],
                                    ),
                                    SizedBox(height: 10,),
                                    Container(
                                      width: 340,
                                      height: 40,
                                      decoration: BoxDecoration(
                                      color: const Color.fromARGB(255, 75, 75, 75),
                                      borderRadius: BorderRadius.circular(10),
                                ),
                                      child: Center(child: Text('See More',style: TextStyle(color: Colors.white),)),
                                    ),
                                    SizedBox(height: 10,),
                                    Divider(thickness: 1,color: Colors.white,),
                                    Row(
                                      children: [
                                        Image.asset('assets/questionmarks-Photoroom.png',width: 80,height: 60,),
                                        Text('Help & Support',style: TextStyle(color: Colors.white),),
                                        SizedBox(width:160 ,),
                                        Icon(Icons.arrow_drop_down_circle_outlined,color: Colors.white),

                                      ],
                                    ),
                                    
                                    Divider(thickness: 1,color: Colors.white,),
                                    Row(
                                      children: [
                                        Image.asset('assets/settings-Photoroom.png',width: 80,height: 50,),
                                        Text('Settings & Privacy',style: TextStyle(color: Colors.white),),
                                        SizedBox(width:140 ,),
                                        Icon(Icons.arrow_drop_down_circle_outlined,color: Colors.white),

                                      ],
                                    ),
                                    Divider(thickness: 1,color: Colors.white,),
                                    Row(
                                      children: [
                                        Image.asset('assets/meta-Photoroom.png',width: 80,height: 60,),
                                        Text('Also from Meta',style: TextStyle(color: Colors.white),),
                                        SizedBox(width:155 ,),
                                        Icon(Icons.arrow_drop_down_circle_outlined,color: Colors.white),

                                      ],
                                    ),
                                    SizedBox(height: 10,),
                                    Container(
                                      width: 340,
                                      height: 40,
                                      decoration: BoxDecoration(
                                      color: const Color.fromARGB(255, 75, 75, 75),
                                      borderRadius: BorderRadius.circular(10),
                                ),
                                      child: Center(child: Text('Log Out',style: TextStyle(color: Colors.white),)),
                                    ),
                                    SizedBox(height: 20,)
            
            ] ),
      ),
    );
  }}
