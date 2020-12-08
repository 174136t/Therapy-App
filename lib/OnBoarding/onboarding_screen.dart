import 'package:flutter/material.dart';
import 'package:therapy_app/Animation/fade_animation.dart';
import 'package:therapy_app/LogOut/logout.dart';
import 'package:therapy_app/Widgets/constant.dart';
import 'package:therapy_app/Widgets/curved_widget.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  String fullName;
  String password;

  TextEditingController fullNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Widget fullnameField() {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Username',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18, color: Colors.pink),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
              decoration: BoxDecoration(
                  // color: skyblue,
                  // borderRadius: BorderRadius.circular(15)
                  ),
              child: TextFormField(
                cursorColor: Colors.pink,
                style: TextStyle(
                    color: Colors.pink,
                    fontWeight: FontWeight.w800,
                    fontSize: 18),
                controller: fullNameController,
                autofocus: false,
                decoration: InputDecoration(
                    fillColor: Colors.pink.withOpacity(0.3),
                    // border: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(15.0),
                    // ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent, width: 2),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    prefixIcon: Icon(
                      Icons.person_pin,
                      color: Colors.pink,
                    ),
                    errorStyle: TextStyle(color: Colors.red),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.pink),
                    hintText: 'John Doe'),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Username can\'t be empty';
                  }
                },
                onSaved: (String value) {
                  this.fullName = value;
                },
              )),
        ],
      ),
    );
  }

Widget passwordField() {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Password',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18, color: Colors.pink),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
              child: TextFormField(
            cursorColor: Colors.pink,
            style: TextStyle(
                color: Colors.pink, fontWeight: FontWeight.w800, fontSize: 18),
            controller: passwordController,
            autofocus: false,
            obscureText: _obscureText,
            
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent, width: 2),
                borderRadius: BorderRadius.circular(15.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent, width: 2),
                borderRadius: BorderRadius.circular(15.0),
              ),
              prefixIcon: Icon(
                Icons.vpn_key,
                color: Colors.pink,
              ),
              suffixIcon: GestureDetector(
                onTap: _toggle,
                child: Padding(
                    padding: EdgeInsets.all(0.0),
                    child: _obscureText == true
                        ? Icon(
                            Icons.visibility_off,
                            color: Colors.pink,
                          )
                        : Icon(
                            Icons.visibility,
                            color: Colors.pink,
                          )),
              ),
              hintText: 'Password',
              hintStyle: TextStyle(color: Colors.pink),
              errorStyle: TextStyle(color: Colors.red),
              filled: true,
              fillColor: Colors.pink.withOpacity(0.3),
            ),
            validator: (value) {
              if (value.isEmpty || value.length < 6) {
                return 'Minimum password length is 6';
              }
            },
            onSaved: (String value) {
              this.password = value;
            },
          )),
        ],
      ),
    );
  }
  bool _obscureText = true;
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child: CurvedWidget(
                child: Container(
                  padding:  EdgeInsets.only(top: 0, left: size.width*0.1),
                  width: double.infinity,
                  height: size.height * 0.6,
                  decoration: BoxDecoration(gradient: pinkRedGradient),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      FadeAnimation(
                        1.3,
                        ClipRRect(
                          child: Image.asset(
                            "assets/t.png",
                            height: size.height * 0.35,
                            // width: double.infinity,
                            // it cover the 25% of total height
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      FadeAnimation(
                        1.4,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Welcome Back!',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: size.width * 0.12,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Login below to get started",
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
            // SizedBox(
            //   height: 42,
            // ),
            FadeAnimation(1.5, fullnameField()),
            SizedBox(height: size.height*0.01),
            FadeAnimation(1.5, passwordField()),
             SizedBox(height: size.height*0.05),
            
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
                        builder: (context) => LogOutScreen(),
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
                    'SIGN IN',
                    style: TextStyle(
                      color: kWhiteColor,
                      fontSize: size.height*0.025,
                      fontWeight: FontWeight.w900
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            // FadeAnimation(
            //   1.8,
            //   Align(
            //     alignment: Alignment.bottomCenter,
            //     child: Text("NexClinic V.1.0"),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
