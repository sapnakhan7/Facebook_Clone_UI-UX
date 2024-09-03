import 'package:flutter/material.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
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

List<String> comments = [
  'Love',
  'Sweet',
  'Fantastic',
  'Great',
  'Good',
  'Adorable',
  'Well',
  'Nice',
  'Cute',
  'Interesting',
  'Amazing',
  'Incredible',
  'Awesome',
  'Lovely',
  'Perfect',
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
      backgroundColor: const Color.fromARGB(255, 60, 60, 60),
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(width: 10,),
              Text('Video',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
              SizedBox(width: 220,),
              Icon(Icons.person,size: 25,color: Colors.white,),
              SizedBox(width: 10,),
              Icon(Icons.search,size: 25,color: Colors.white,),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 20,),
              Text('For you',style: TextStyle(color: Colors.blue),),
              SizedBox(width: 30,),
              Text('Live',style: TextStyle(color: Colors.blue),),
              SizedBox(width: 30,),
              Text('Reels',style: TextStyle(color: Colors.blue),),
              SizedBox(width: 30,),
              Text('Following',style: TextStyle(color: Colors.blue),),
            ],
          ),
          SizedBox(height: 10,),
          Expanded(
            child: ListView.builder(
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Card(
                  color: const Color.fromARGB(255, 97, 97, 97),
                  margin: EdgeInsets.all(10),
                  elevation: 5,
                  child:  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                              backgroundImage: AssetImage(images[index]),
                                            ),
                                            const SizedBox(width: 10),
                                        Text(' ${Names[index]}',style: TextStyle(color: Colors.white),),
                                        const  SizedBox(width: 20),
                                        Text('Follow',style: TextStyle(color: Colors.blue),),
                                        const  SizedBox(width: 120),
                                        const  Icon(Icons.more_vert,color: Colors.white,),
                                        const  SizedBox(width: 10),
                                        const  Icon(Icons.cancel,color: Colors.white,),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            const Padding(
                              padding: const EdgeInsets.only(right: 130),
                              child: Text('This is all about yesterdays night',style: TextStyle(color: Colors.white)),
                            ),
                            const SizedBox(height: 10,),
                            ClipRRect(
                              borderRadius:const  BorderRadius.all(Radius.circular(10)),
                              child: Image.asset(images[index],width: 400,height: 400, fit: BoxFit.cover,)),
                              const SizedBox(height: 20,),
                              Row(
                                children: [
                                  const SizedBox(width: 10,),
                                  const Icon(Icons.thumb_up,color: Colors.blue,),
                                  const SizedBox(width: 10,),
                                  Text('${likes[index]}',style: const TextStyle(color: Colors.white)),
                                  const SizedBox(width: 10,),
                                  const Text('25'),
                                  const SizedBox(width: 115,),
                                  Text('${comments[index]}',style:const TextStyle(color: Colors.blue)),
                                  const SizedBox(width: 10,),
                                  const Text('10 Shares',style: TextStyle(color: Colors.blue)),
                                  
                                ],
                              ),
                              const SizedBox(height: 20,),
                              const Row(
                              children: [
                                SizedBox(width: 10,),
                                Icon(Icons.thumb_up_outlined, color: Colors.white,size: 15,),
                                SizedBox(width: 5,),
                                Text('Like',style: TextStyle(color: Colors.white,fontSize: 12),),
                                SizedBox(width: 37,),
                                Icon(Icons.insert_comment_outlined,color: Colors.white,size: 15,),
                                SizedBox(width: 5,),
                                Text('Comments',style: TextStyle(color: Colors.white,fontSize: 12),),
                                SizedBox(width: 37,),
                                Icon(Icons.send,color: Colors.white,size: 15,),
                                SizedBox(width: 5,),
                                Text('Send',style: TextStyle(color: Colors.white,fontSize: 12),),
                                SizedBox(width: 37,),
                                Icon(Icons.share,color: Colors.white,size: 15,),
                                SizedBox(width: 5,),
                                Text('Share',style: TextStyle(color: Colors.white,fontSize: 12),),
                              ],
                            ),
                          ],
                        ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}