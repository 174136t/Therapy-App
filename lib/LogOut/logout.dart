import 'package:flutter/material.dart';
import 'package:therapy_app/Animation/fade_animation.dart';
import 'package:therapy_app/Forms/initial01.dart';
import 'package:therapy_app/Forms/initial02.dart';
import 'package:therapy_app/Forms/treatment.dart';
import 'package:therapy_app/Widgets/constant.dart';
import 'package:therapy_app/Widgets/curved_widget.dart';

class LogOutScreen extends StatefulWidget {
  @override
  _LogOutScreenState createState() => _LogOutScreenState();
}

class _LogOutScreenState extends State<LogOutScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: CurvedWidget(child: Container(
                  padding:  EdgeInsets.only(top: 0, left: size.width*0.1),
                  width: double.infinity,
                  height: size.height * 0.3,
                  decoration: BoxDecoration(gradient: pinkRedGradient),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: size.height*0.08,),
                       FadeAnimation(
                        1.2,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Hi Lahiru!',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: size.width * 0.12,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Select your preference",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: size.width * 0.04),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
              ),
              
              ),
            ),
               SizedBox(
              height: size.height * 0.05,
            ),
            FadeAnimation(
                1.4,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Initial01(),
                          ),
                        );
                      },
                      child: Container(
                         width: size.width*0.45,
                        child: Column(
                          children: [
                            Container(
                              // width: size.width*0.3,
                              //  height: size.width * 0.3,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black,width: 2),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: ClipRRect(
                                  child: Image.asset(
                                    "assets/se.png",
                                    height: size.width * 0.35,
                                    width: size.width * 0.35,
                                    filterQuality: FilterQuality.high,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.03,
                            ),
                            Text(
                              'Search',
                              style: TextStyle(
                                  fontSize: size.height*0.02, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: size.width * 0.05),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Initial02(),
                          ),
                        );
                      },
                      child: Container(
                        width: size.width*0.45,
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black,width: 2),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: ClipRRect(
                                  child: Image.asset(
                                    "assets/re.png",
                                    height: size.width * 0.35,
                                    width: size.width * 0.35,
                                   filterQuality: FilterQuality.high,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.03,
                            ),
                            Text(
                              'Registration',
                              style: TextStyle(
                                  fontSize: size.height*0.02, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )),
                SizedBox(height: size.height*0.15,),
                FadeAnimation(
              1.6,
              Container(
                height: size.height*0.07,
                width: size.width * 0.5,
                decoration: BoxDecoration(
                  gradient: pinkRedGradient,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                ),
                child: MaterialButton(
                  // color: Colors.blue[800],
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TreatmentHistory(),
                      ),
                    );
                  },
                  // color: Color(0xffFC9535),
                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    'LOG OUT',
                    style: TextStyle(
                      color: kWhiteColor,
                      fontSize: size.height*0.025,
                      fontWeight: FontWeight.w900
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}