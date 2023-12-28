import 'package:flutter/material.dart';

class InputLogin extends StatefulWidget{
  @override
  State<InputLogin> createState() {
    return MyInputLogin();
  }
}

class MyInputLogin extends State<InputLogin>{
  final dataEmail = TextEditingController();
  @override
  Widget build(BuildContext context) {
   return Container(
       width: 362,
       height: 56,
       decoration: BoxDecoration(image: DecorationImage(image: AssetImage('folder_image/image_bar.png'),fit: BoxFit.cover)),
       child: Padding(
         padding: const EdgeInsets.only(left: 10, right: 10),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             TextField(
                 controller: dataEmail,
                 decoration: InputDecoration(
                     labelText: 'Enter your email',
                 )
             ),
             SizedBox(height: 19, width: 24, child: Image.asset('folder_image/image_iconemail.png', fit: BoxFit.cover,),)
           ],
         ),
       )
   );
   }
  }

