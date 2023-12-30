import 'package:flutter/material.dart';

class MyBox extends StatelessWidget{
  String name = '', chat = '' ;
  String text = '', image = '';
  int? rank;
  final double height = 65;
  final double width = 388;
  MyBox({required this.image,required this.name, required this.rank, required this.text, required this.chat});

  @override
  Widget build(BuildContext context) {
    const double verticalLength = 9;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: verticalLength),
      child: Container(
             height: height,
             width:  width,
               child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                           Container(
                               height: height,
                               width: height,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(8),
                                 image: DecorationImage(image:
                                  AssetImage(image), fit: BoxFit.cover)
                                                               ),
                           ),
                            Container(
                               height: height,
                               width: 32,
                               child: Text('$rank', textAlign: TextAlign.center, style: TextStyle(fontSize: 16),)),
                            Expanded(
                              // height: height,
                              // width: 195,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(child: Text(name, style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
                                  Expanded(child: Text(text,style: TextStyle(fontSize: 14,color: Colors.grey),)),
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Icon(
                                            Icons.chat,
                                            color: Colors.grey,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5),
                                          child: Text(chat,style: TextStyle(fontSize: 14,color: Colors.grey)),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                              Container(
                                    height: 43,
                                    width: 85,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
                                          child: Text('CHAT', style: TextStyle(color: Colors.blue, fontSize: 14, fontWeight: FontWeight.bold),),
                                          onPressed: (){},
                                        ),
                                      ),
                                    ]
                                 ),
                                ),
                              );

  }
}