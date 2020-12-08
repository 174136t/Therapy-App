import 'package:flutter/material.dart';
import 'package:signature/signature.dart';
import 'package:therapy_app/Animation/fade_animation.dart';
import 'package:therapy_app/Widgets/constant.dart';
import 'package:therapy_app/Widgets/curved_widget.dart';

class Initial01 extends StatefulWidget {
  @override
  _Initial01State createState() => _Initial01State();
}

class _Initial01State extends State<Initial01> {
  final SignatureController _controller = SignatureController(
    penStrokeWidth: 5,
    penColor: Colors.black,
    exportBackgroundColor: Colors.blue,
  );

  @override
  void initState() {
    super.initState();
    _controller.addListener(() => print("Value changed"));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    child: CurvedWidget(
                      child: Container(
                        padding:
                            EdgeInsets.only(top: 0, left: size.width * 0.05),
                        height: size.height * 0.2,
                        width: size.width,
                        decoration: BoxDecoration(gradient: pinkRedGradient),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: size.height * 0.03,
                            ),
                            FadeAnimation(
                              1.2,
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                                crossAxisAlignment: CrossAxisAlignment.center,

                                children: <Widget>[
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Icon(
                                      Icons.arrow_back_ios,
                                      color: Colors.white,
                                      size: size.width * 0.05,
                                    ),
                                  ),

                                  Container(
                                    child: Text(
                                      'Initial Assesment Form',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: size.width * 0.05,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),

                                  // Container()

                                  // Text(

                                  //   "Select your preference",

                                  //   style: TextStyle(

                                  //       color: Colors.white,

                                  //       fontSize: size.width * 0.04),

                                  // )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    child: FadeAnimation(
                      1.4,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: size.height * 0.15,
                              // left: size.width * 0.05
                            ),
                            child: Center(
                              child: Text(
                                'Customer\'s Agreement',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Colors.pink,
                                    fontSize: size.height * 0.03,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: size.width * 0.05),
                            child: Text(
                              'Customer\'s signature',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: size.height * 0.02,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          ListView(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            children: <Widget>[
                              // Container(
                              //   height: 300,
                              //   child: Center(
                              //     child: Text('Big container to test scrolling issues'),
                              //   ),
                              // ),
                              //SIGNATURE CANVAS
                              Signature(
                                controller: _controller,
                                height: size.height * 0.3,
                                width: size.width * 0.95,
                                backgroundColor: Colors.pink[50],
                              ),
                              //OK AND CLEAR BUTTONS
                              Container(
                                decoration: const BoxDecoration(
                                    color: Colors.transparent),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  mainAxisSize: MainAxisSize.max,
                                  children: <Widget>[
                                    //SHOW EXPORTED IMAGE IN NEW ROUTE
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        width: size.width * 0.4,
                                        // color: Colors.pink,
                                        decoration: BoxDecoration(
                                            gradient: pinkRedGradient,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Ok',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: size.height * 0.015,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            IconButton(
                                              icon: const Icon(Icons.check),
                                              color: Colors.white,
                                              onPressed: () async {
                                                if (_controller.isNotEmpty) {
                                                  // var data = await _controller
                                                  //     .toPngBytes();
                                                  // Navigator.of(context).push(
                                                  //   MaterialPageRoute(
                                                  //     builder: (BuildContext
                                                  //         context) {
                                                  //       return Scaffold(
                                                  //         appBar: AppBar(),
                                                  //         body: Center(
                                                  //             child: Container(
                                                  //                 color: Colors
                                                  //                         .grey[
                                                  //                     300],
                                                  //                 child: Image
                                                  //                     .memory(
                                                  //                         data))),
                                                  //       );
                                                  //     },
                                                  //   ),
                                                  // );
                                                }
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    //CLEAR CANVAS
                                    Container(
                                      width: size.width * 0.4,
                                      // color: Colors.pink,
                                      decoration: BoxDecoration(
                                          gradient: pinkRedGradient,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Clear',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: size.height * 0.015,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          IconButton(
                                            icon: const Icon(Icons.clear),
                                            color: Colors.white,
                                            onPressed: () {
                                              setState(
                                                  () => _controller.clear());
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Container(
                              //   height: 500,
                              //   color: Colors.red,
                              //   child: Center(
                              //     child: Text(
                              //         'Big container to test scrolling issues'),
                              //   ),
                              // ),
                            ],
                          ),
                          SizedBox(
                            height: size.height * 0.05,
                          ),
                          Center(
                            child: Container(
                              width: size.width * 0.8,
                              child: CheckboxListTile(
                                activeColor: Colors.pink,
                                title: Text("Customer agreed:"),
                                value: true,
                                onChanged: (newValue) {
                                  // setState(() {
                                  //   checkedValue = newValue;
                                  // });
                                },
                                controlAffinity: ListTileControlAffinity
                                    .trailing, //  <-- leading Checkbox
                              ),
                            ),
                          ),
                          SizedBox(height: size.height * 0.1),
                          FadeAnimation(
                            1.6,
                            Center(
                              child: Container(
                                height: size.height * 0.07,
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
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(
                                    //     builder: (context) => LogOutScreen(),
                                    //   ),
                                    // );
                                  },
                                  // color: Color(0xffFC9535),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 30,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Text(
                                    'NEXT',
                                    style: TextStyle(
                                        color: kWhiteColor,
                                        fontSize: size.height * 0.025,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
