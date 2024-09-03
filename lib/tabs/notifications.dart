import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  
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
  
  List<int> likes = [
  200,
  564,
  345,
  789,
  456,
  123,
  654,
  321,
  876,
  234,
  567,
  890,
  345,
  678,
  123,
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 70, 69, 69),
      body: Column(
        children: [
            Row(
            children: [
              SizedBox(width: 10,),
              Text('Notifications',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
              SizedBox(width: 150,),
              Icon(Icons.search,size: 30,color: Colors.white,),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: images.length,
              itemBuilder: (context,index){
                return Container(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset(images[index])),
                            ),
                            Positioned(
                              top: 35.0,
                              left: 30.0,
                              child: Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(100)
                              ),
                              child: Icon(Icons.people_sharp),
                                                      ),
                            ),
                            
                          ],
                        ),
                        SizedBox(width: 10,),
                        Text('Someon followed you , chech out\ntheir profile may you know\nthat person',
                        style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(width: 40,),
                        Icon(Icons.more_horiz_outlined,color: Colors.white,)
                      ],
                    ),
                  ),
                  
                );
                
              }))
        ],
      ),
    );
  }
}