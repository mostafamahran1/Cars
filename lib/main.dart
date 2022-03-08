import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: "Cars",
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    )
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late PageController _pageController;
  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget> [
          makePage(
              image: "assets/images/one.jpg",
              title:"Ferrari",
              descriptions:"Ferrari is one of the most famous Italian car manufacturers in the world. It was founded by Enzo Ferrari in 1947 in Maranello, near Modena. Always an emblem of speed and sportsmanship, Ferrari is highly appreciated for its high-end racing cars and for the design that makes them recognizable from the smallest detail.",
              price:'335 M',
              page:1
          ),
          makePage(
              image: "assets/images/two.jpg",
              title:"Mercedes",
              descriptions:"Mercedes-Benz is a subsidiary of Daimler and the brand is used on luxury cars, buses and trucks. Mercedes focuses its sponsorship spending on events that attract a well-heeled crowd.",
              price:"54,250 M",
              page:2
          ),
          makePage(
              image: "assets/images/three.jpg",
              title:"BMW",
              descriptions:"BMW is headquartered in Munich, Bavaria. It also owns and produces Mini cars, and is the parent company of Rolls-Royce Motor Cars. BMW produces motorcycles under BMW Motorrad. In 2012, the BMW Group produced 1,845,186 automobiles and 117,109 motorcycles across all of its brands. BMW is part of the “German Big 3” luxury automakers, along with Audi and Mercedes-Benz, which are the three best-selling luxury automakers in the world.",
              price:"37,400 M",
              page:3
          ),
          makePage(
              image: "assets/images/four.jpg",
              title:"Ford Mustang",
              descriptions:"Ford is a family company, one that spans the globe and has shared ideals. We value service to each other and the world as much as to our customers. Generations have made their memories with us and included us in their hopes and dreams. After 117 years, we’re used to adapting to and leading change.",
              price:"38,160",
              page:4
          ),
          makePage(
              image: "assets/images/five.jpg",
              title:"Bugatti Chiron",
              descriptions:"All Chiron models are motivated by an 8.0-liter 16-cylinder powerplant. This beast of an engine employs four turbochargers to generate a mighty 1500 horsepower and 1180 pound-feet of torque. Bugatti claims that the Chiron makes the dash from zero to 60 mph in a mere 2.3 seconds, and it has a top speed of 261 mph.",
              price:"300 M",
              page:5
          ),
          makePage(
              image: "assets/images/six.jpg",
              title:"Chevrolet Camaro",
              descriptions:"The Chevrolet Camaro is a mid-size American automobile manufactured by Chevrolet, classified as a pony car. It first went on sale on September 29, 1966, for the 1967 model year and was designed as a competing model to the Ford Mustang.",
              price:"43,645 M",
              page:6
          ),
        ],
      )
      ,
    );
  }
  Widget makePage({image,title,descriptions,price,page}){
    return(
    Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
            image: AssetImage(image),
        )
      ),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
             children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(page.toString(), style: TextStyle(fontWeight: FontWeight.bold , fontSize: 40, color: Colors.white),),
                Text('/6', style: TextStyle(fontWeight: FontWeight.bold , fontSize: 30, color: Colors.white),)
              ],
            ),
               Expanded(
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.end,
                     crossAxisAlignment: CrossAxisAlignment.start,

                     children: [
                       Text(title, style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),),
                       SizedBox(height: 5,),
                       Row(
                         children: [
                           Container(
                             margin : EdgeInsets.only(right: 5) ,
                             child: Icon(Icons.star, color: Colors.yellow, size: 16,),
                           ),
                           Container(
                             margin : EdgeInsets.only(right: 5) ,
                             child: Icon(Icons.star, color: Colors.yellow, size: 16,),
                           ),
                           Container(
                             margin : EdgeInsets.only(right: 5) ,
                             child: Icon(Icons.star, color: Colors.yellow, size: 16,),
                           ),
                           Container(
                             margin : EdgeInsets.only(right: 5) ,
                             child: Icon(Icons.star, color: Colors.yellow, size: 16,),
                           ),
                           Container(
                             margin : EdgeInsets.only(right: 5) ,
                             child: Icon(Icons.star, color: Colors.grey, size: 16,),
                           ),
                           SizedBox(height: 5,),
                           Text('4.0', style: TextStyle(color: Colors.white, fontSize: 16 , fontWeight: FontWeight.bold),),
                           SizedBox(width: 5,),
                           Text('(2300)', style: TextStyle(color: Colors.white54, fontSize: 10 , fontWeight: FontWeight.bold),)
                         ],
                       ),
                       SizedBox(height: 10,),
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(descriptions, style: TextStyle(color: Colors.white38, fontWeight: FontWeight.bold, fontSize: 16),),
                           SizedBox(height: 10,),
                           Text('READ MORE', style: TextStyle(color: Colors.white60, fontWeight: FontWeight.bold, fontSize: 13),),
                           Row(
                             crossAxisAlignment: CrossAxisAlignment.end,
                             mainAxisAlignment: MainAxisAlignment.end,
                             children: [
                               Text('price :',style: TextStyle(color: Colors.white, fontSize: 30 , fontWeight: FontWeight.bold),),
                               SizedBox(width: 5,),
                               Text(price.toString(),style: TextStyle(color: Colors.white, fontSize: 25 , fontWeight: FontWeight.bold) )
                             ],
                           ),
                         ],
                       ),
                     ],
                   )
               )
          ],
      ),
        ),
    )
    )
    );
  }
}
