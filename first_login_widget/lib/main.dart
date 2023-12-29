
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget{

  @override
  State<MyApp> createState() {
    return MyLoginApp();
  }
}
class MyLoginApp extends State<MyApp> {
  final TextEditingController dataEmail = TextEditingController();
  final TextEditingController dataPass = TextEditingController();
  bool isCorrect(){
    if(this.dataEmail.text == 'Trong' && this.dataPass.text == '12345'){
      return true;
    }
    else{
      return false;
    }
  }


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    final double screenHeight = MediaQuery
        .of(context)
        .size
        .height;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:
        Scaffold(
              resizeToAvoidBottomInset: false,
              body:SafeArea(
                    child: Container(
                        width: screenWidth,
                        height: screenHeight,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'folder_image/image_background.png'),
                                fit: BoxFit.cover)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                width: 103,
                                height: 48,
                                margin: const EdgeInsets.only(left: 265, top: 15),
                                child: Image.asset(
                                    'folder_image/image_uk.png', fit: BoxFit.fill)
                            ),
                            Container(
                                width: 145,
                                height: 145,
                                margin: const EdgeInsets.only(top: 15),
                                child: Image.asset('folder_image/image_logo.png',
                                    fit: BoxFit.cover)
                            ),
                            const Padding(
                                padding: EdgeInsets.only(top: 20, bottom: 5),
                                child: Text('Hi', style: TextStyle(
                                    fontSize: 16, color: Colors.white))
                            ),
                            const Text('Welcome with Lofi',
                              style: TextStyle(fontSize: 27, color: Colors.white),),
                            const Padding(
                              padding: EdgeInsets.only(
                                  top: 25, right: 320, bottom: 10),
                              child: Text('Email', style: TextStyle(
                                  fontSize: 16, color: Colors.white)),
                            ),

                            Container(
                                width: 362,
                                height: 56,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(image: AssetImage(
                                        'folder_image/image_bar.png'),
                                        fit: BoxFit.cover)),
                                child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment
                                            .spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment
                                            .center,
                                        children: [
                                          Expanded(
                                              child: TextField(
                                                style: TextStyle(color: Colors.white),
                                                controller: dataEmail,
                                                decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  hintText: '@Enter your email',
                                                  hintStyle: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 16),

                                                ),
                                                cursorColor: Colors.white,
                                              )
                                          ),
                                          SizedBox(
                                            height: 19,
                                            width: 24,
                                            child: Image.asset(
                                              'folder_image/image_iconemail.png',
                                              fit: BoxFit.cover,),),
                                        ]
                                    )
                                )
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 3, left: 175),
                              child: Text('Email is incorrect, please check again',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                  top: 15, right: 288, bottom: 10),
                              child: Text('Password', style: TextStyle(
                                  fontSize: 16, color: Colors.white)),
                            ),
                            Container(
                                width: 362,
                                height: 56,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(image: AssetImage(
                                        'folder_image/image_bar.png'),
                                        fit: BoxFit.cover)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                          child: TextField(
                                            keyboardType: TextInputType.number,
                                            style: TextStyle(color: Colors.white),
                                            controller: dataPass,
                                            cursorColor: Colors.white,
                                            obscureText: true,
                                            decoration:
                                                InputDecoration(
                                                border: InputBorder.none,
                                                hintText: "@At least 8 characters",
                                                hintStyle: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16)
                                            ),
                                          )
                                      ),
                                      SizedBox(
                                          height: 29, width: 75, child: Image.asset(
                                        'folder_image/image_login_pass.png',
                                        fit: BoxFit.cover,))
                                    ],
                                  ),
                                )
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 3, left: 156),
                              child: Text(
                                'Password is incorrect, please check again',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 40, bottom: 40),
                              child: Text('Forgot password?', style: TextStyle(
                                  color: Colors.white, fontSize: 16),),
                            ),

                            this.isCorrect()? MyNotice() : MyNoticeWrong(),


                            const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Have not signed up yet?', style: TextStyle(
                                      color: Colors.white, fontSize: 16),),
                                  Text('Sign up now', style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      decoration: TextDecoration.underline,
                                      decorationColor: Colors.white),),
                                ],
                              ),
                          ],
                        )
                    )
                ),

          ),
        );
  }
}

class MyNotice extends  StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      height: 80,
      decoration: BoxDecoration(
        image:DecorationImage(
            image:AssetImage('folder_image/image_button.png'), fit:BoxFit.cover ),),
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
        home:
                IconButton(
                                icon: Text('Continue',style: TextStyle(color: Colors.transparent),),
                                onPressed: () {
                                showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return const AlertDialog(
                                    title: Text("SUCCESS"),
                                    content: Text("Login successful!"),
                                  );
                                },
                                );
                             },
                          ),
          ),
    );
  }
}

class MyNoticeWrong extends  StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      height: 80,
      decoration: BoxDecoration(
        image:DecorationImage(
            image:AssetImage('folder_image/image_button.png'), fit:BoxFit.cover ),),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:
        IconButton(
          icon: Text('Continue',style: TextStyle(color: Colors.transparent),),
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return const AlertDialog(
                  title: Text("FAILED"),
                  content: Text("Check again"),
                );
              },
            );
          },
        ),
      ),
    );
  }
}