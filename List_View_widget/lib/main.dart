import 'package:flutter/material.dart';
import 'DetailBoxInfor.dart';
import 'ButtonScrollHorizontal.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  final List<String> dataName = ['Vanessa','Walter White', 'Raiden Shogun', 'Jordan Belfort', 'Joker', 'Jesus', 'Daenerys Targaryen' ];
  final List<int> dataRank = [1,2,3,4,5,6,7];
  final List<String> dataText = ['Your favorite AI Girlfriend', 'Lorem ipsum dolor sit amet con...','Lorem ipsum dolor sit amet con...','Lorem ipsum dolor sit amet con...','Lorem ipsum dolor sit amet con...','Lorem ipsum dolor sit amet con...','Lorem ipsum dolor sit amet con...'];
  final List<String> dataChat = ['3.2m','1.4m','900k','900k','900k','900k','900k'];
  final List<String> dataImage = ['image_foder/image1.png', 'image_foder/image2.png', 'image_foder/image3.png', 'image_foder/image4.png', 'image_foder/image5.png', 'image_foder/image6.png', 'image_foder/image7.png'];
  final List<String> dataImageIcon =['image_foder/image8.png','image_foder/image9.png','image_foder/image10.png','image_foder/image11.png'];
  final List<String> dataNameIcon = ['Explore','Top', 'Anime', 'Movie'];

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    const double appBarHeight = 30;

    return MaterialApp(
     debugShowCheckedModeBanner: false,
     theme: ThemeData.dark(),
     home: Scaffold(
      appBar: AppBar(
        toolbarHeight: appBarHeight,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
               Container(
                 child: IconButton(
                   onPressed: (){},
                   icon: Icon(Icons.arrow_back), iconSize: 30,)
               ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text('Home', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                ),
                 ],
            ) ,
      ),
      body: Container(
        height: screenHeight,
        width: screenWidth,
        padding: const EdgeInsets.all( 20),
        child:
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Center(
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: dataNameIcon.length,
                        itemBuilder: (context,index){
                         return MyTopScroll(imageIcon: dataImageIcon[index], nameIcon: dataNameIcon[index]);}
                                     ),
                  ),
               ),
                Container(
                    height: 40,
                    width: screenWidth - 40,
                    // color: Colors.red,
                    child: const Text('Trending Now',style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                ),
                  Container(
                    height: 635,
                    width: screenWidth - 40,
                     // color: Colors.black,
                     child: ListView.separated(
                      itemCount: dataRank.length,
                      separatorBuilder: (BuildContext context, int index) => const Divider(color: Colors.grey, thickness: 0,),
                      itemBuilder: (context,index){
                      return MyBox(
                      image: dataImage[index],
                      name: dataName[index],
                      rank: dataRank[index],
                      text: dataText[index],
                      chat: dataChat[index],
                      );
                      },
                     ),
                  ),
              ]
            ),
        ),
      )
     );
  }
}