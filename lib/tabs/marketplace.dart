import 'package:flutter/material.dart';

class MarketScreen extends StatefulWidget {
  const MarketScreen({super.key});

  @override
  State<MarketScreen> createState() => _MarketScreenState();
}

class _MarketScreenState extends State<MarketScreen> {
  List<String>market=[
    'assets/dress 2.jpeg',
    'assets/fortuner.jpeg',
    'assets/laptop.jpeg',
    'assets/dress.jpeg',
    'assets/watch.jpeg',
    'assets/jewellery.jpeg',
    'assets/home.jpeg',
    'assets/dress3.jpeg',
    'assets/fortuner2.jpeg',
    'assets/jewellery2.jpeg',
    'assets/mobile.jpeg',
    'assets/shoes.jpeg',
    'assets/smart watch.jpeg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 70, 70, 70),
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(width: 10,),
              Text('MarketPlace',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
              SizedBox(width: 130,),
              Icon(Icons.person,size: 25,color: Colors.white,),
              SizedBox(width: 10,),
              Icon(Icons.search,size: 25,color: Colors.white,),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 150,
                height: 40,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 128, 127, 127),
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.sell,color: Colors.white,),
                    SizedBox(width: 10,),
                    Text('Sell',style: TextStyle(color: Colors.white),),
                  ],
                ),
              ),
              Container(
                width: 150,
                height: 40,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 128, 127, 127),
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.menu,color: Colors.white,),
                    SizedBox(width: 10,),
                    Text('Categories',style: TextStyle(color: Colors.white),),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Expanded(
              child: GridView.builder(
                itemCount: market.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 1,
                    crossAxisSpacing: 1,
                    crossAxisCount: 2,
                    childAspectRatio: 1 / 1.3,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      child: Column(
                        children: [
                          Container(
                            height: 200,
                            width: 180,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white)),
                            child:Image.asset(market[index], fit: BoxFit.cover,)
                          ),
                          SizedBox(height: 10),
                          Text('RS 250000',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    );
                  }),
            )
          
        ],
      ),
    );
  }
}