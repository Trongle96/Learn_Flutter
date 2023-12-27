import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
               body: SafeArea(
                 child: Container(
                   width: screenWidth,
                   height: screenHeight,
                  decoration: const BoxDecoration(
                         image: DecorationImage(
                         image: AssetImage('folder_image/image_background.png'),fit: BoxFit.cover)
                           ),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       // crossAxisAlignment: CrossAxisAlignment.end,
                       children: [
                            Container(
                             width: 103,
                             height: 48,
                             // color: Colors.black,
                             margin: EdgeInsets.only(left: 265, top: 15),
                             child: Image.asset('folder_image/image_uk.png', fit: BoxFit.fill)
                             ),
                            Container(
                             width: 145,
                             height: 145,
                             // color: Colors.black,
                             margin: EdgeInsets.only(top: 15),
                             child: Image.asset('folder_image/image_logo.png', fit: BoxFit.cover)
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20, bottom: 5),
                              child: Text('Hi', style: TextStyle(fontSize: 16,color: Colors.white))
                            ),
                              Text('Welcome with Lofi', style: TextStyle(fontSize: 27, color: Colors.white),),
                            Padding(
                                padding: const EdgeInsets.only(top: 25, right: 320, bottom: 10),
                                child: Text('Email', style: TextStyle(fontSize: 16,color: Colors.white)),
                            ),
                            Container(
                              width: 362,
                              height: 56,
                              decoration: BoxDecoration(image: DecorationImage(image: AssetImage('folder_image/image_bar.png'))),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10, right: 10),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                          Text('Goreallove@gmail.com', style: TextStyle(color: Colors.white),),
                                          SizedBox(child: Image.asset('folder_image/image_iconemail.png'),)
                                      ],
                                  ),
                                )
                            ),
                         Padding(
                           padding: const EdgeInsets.only(top: 3,left: 175),
                           child: Text('Email is incorrect, please check again', style: TextStyle(color: Colors.white, fontSize: 11),),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(top: 15, right: 288, bottom: 10),
                           child: Text('Password', style: TextStyle(fontSize: 16,color: Colors.white)),
                         ),
                         Container(
                             width: 362,
                             height: 56,
                             decoration: BoxDecoration(image: DecorationImage(image: AssetImage('folder_image/image_bar.png'))),
                             child: Padding(
                               padding: const EdgeInsets.only(left: 10, right: 10),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Text('Goreallove@gmail.com', style: TextStyle(color: Colors.white),),
                                   SizedBox(child: Image.asset('folder_image/image_iconemail.png'),)
                                 ],
                               ),
                             )
                         ),
                         Padding(
                           padding: const EdgeInsets.only(top: 3,left: 156),
                           child: Text('Password is incorrect, please check again', style: TextStyle(color: Colors.white, fontSize: 11),),
                         ),

                            ]
                      )
                    ),
                   )
                )
    );
  }
}


