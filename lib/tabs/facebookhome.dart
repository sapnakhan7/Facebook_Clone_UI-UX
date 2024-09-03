import 'package:flutter/material.dart';

class FacebookHomeScreen extends StatefulWidget {
  const FacebookHomeScreen({super.key});

  @override
  State<FacebookHomeScreen> createState() => _FacebookHomeScreenState();
}

class _FacebookHomeScreenState extends State<FacebookHomeScreen> {
  
  List<String> Names = [
    'your story',
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

List<String> commentsnames = [
  'SARAH',
  'ALYANA',
  'REHANA',
  'SLARA',
  'JOSEPH',
  'RIDA',
  'KATI',
  'ALI',
  'ESHA',
  'LOVELY',
  'AMAZING',
  'INCREDIBLE',
  'AWESOME',
  'WELL DONE',
  'PERFECT',
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



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 54, 53, 53),
      body: Column(
        children: [
            Padding(
            padding:const  EdgeInsets.all(8.0),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 24,
                  backgroundImage:AssetImage(('assets/dp.jpeg'))),
                  const SizedBox(width: 10,),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "What's on your mind?",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.grey[200],
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 20,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  const Icon(Icons.photo_library,color: Colors.white,),
              ],
            ),
          ),
          const Divider(thickness: 1),

          SizedBox(
            height: 200,
            width: double.infinity,
            child: ListView.builder(
            scrollDirection: Axis.horizontal,
              itemCount: images.length,
              itemBuilder: (context,index){
                return Stack(
                  children:[ 
                    Container(
                    margin: EdgeInsets.all(8),
                    width: 120,
                    height: index==0 ? 110 : 200,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 35, 35, 35), 
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(image: AssetImage(images[index],)
                      ,fit:BoxFit.cover
                      )
                    ),
                  ),
                  index== 0 ? 
                  Positioned(
                    top: 102.0,
                    left: 55.0,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue
                      
                      ),
                      
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Icon(Icons.add),
                        // child: Image.asset(images[index],height: 40,width: 40,)
                        ),
                    ),
                  ):  Positioned(
                    top: 10.0,
                    left: 10.0,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 3)
                      
                      ),
                      
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(images[index],height: 40,width: 40,)
                        ),
                    ),
                  ),
                  Positioned(
                    top: 165.0,
                    left: 15.0,
                    child: Text(Names[index],style: TextStyle(color: Colors.white),)
                    ),
                  
                  ]
                );
              }),
          ),

          // SizedBox(
          //   height: 180,
          //   width: double.infinity,
          //   child: ListView.builder(
          //     scrollDirection: Axis.horizontal,
          //     itemCount: images.length,
          //     itemBuilder: (context, index) {
          //       return 
          //       Expanded(
          //         child: Container(
          //           height: 100,
          //           width: 100,
          //           margin: EdgeInsets.symmetric(horizontal: 4),
          //           decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(8),
          //             color: const Color.fromARGB(255, 99, 98, 98),
          //             image: DecorationImage(image: AssetImage(images[index],),fit: BoxFit.cover)
          //           ),
          //           child: Column(
          //             children: [
          //             Stack(
          //               children: [
          //                   // Image.asset(images[index],width: 100,height: 100,fit: BoxFit.contain,),
          //                   index == 0
          //                 ?Positioned(
          //                 top:80.0,
          //                 left: 40.0,
          //                 child: Container(
          //                   width: 25,
          //                   height: 25,
          //                   decoration: BoxDecoration(
          //                   borderRadius: BorderRadius.circular(100),
          //                 color: Colors.blue,
          //                   ),
          //                 child:const Center(child:Icon(Icons.add,size: 20,)), 
                          
          //                 ),
          //               )
          //               : SizedBox(
          //                 child: Positioned(
          //                   top: 5.0,
          //                   left: 10.0,
          //                   child: CircleAvatar(
          //                     backgroundImage: AssetImage('assets/top image2.jpeg'),
          //                     // backgroundImage: AssetImage(images[index]),
          //                     ),
          //                 ),
          //               ),
          //               ],
          //             ),
          //             const SizedBox(height: 10),
          //             Text(' ${Names[index]}',style: TextStyle(color: Colors.white),),
          //             ],
          //           ),
          //         ),
          //       );
          //     },
          //   ),
          // ),
            const Divider(thickness: 1),
              Expanded(
                child: ListView.builder(
                  itemCount: images.length,
                  itemBuilder: (context,index){
                  return
                  Padding(
                  padding:  const EdgeInsets.only(left: 10,right: 10),
                  child: Container(
                    width: 370,
                    height: 580,
                    color: const Color.fromARGB(255, 70, 69, 69),
                    child:  Column(
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
                                      const  SizedBox(width: 117),
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
                            
                          const Divider(thickness: 1,),
                        
                        ],
                      )
                    
                  ),
                );
                }),
              )
        ],
      ),
    );
  }
}