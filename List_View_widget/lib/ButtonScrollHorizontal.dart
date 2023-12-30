import 'package:flutter/material.dart';

class MyTopScroll extends StatelessWidget{
  final String imageIcon;
  final String nameIcon;
  MyTopScroll({required this.imageIcon, required this.nameIcon});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: Container(
        width: 114,
        height: 45,
        child: ElevatedButton(
            onPressed: (){},
            style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 18,
                    height: 18,
                    padding: EdgeInsets.only(right: 5),
                    child: Image(image: AssetImage(imageIcon),
                   ),
                ),
                Text(nameIcon, style: (TextStyle(fontSize: 14, color: Colors.white)),)
              ],
            )
        ),
      ),
    );
  }
}