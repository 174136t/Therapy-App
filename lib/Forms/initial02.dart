import 'package:flutter/material.dart';
import 'package:therapy_app/Animation/fade_animation.dart';
import 'package:therapy_app/Widgets/constant.dart';
import 'package:therapy_app/Widgets/curved_widget.dart';

enum BestTutorSite { other, surgical }

class Initial02 extends StatefulWidget {
  @override
  _Initial02State createState() => _Initial02State();
}

class _Initial02State extends State<Initial02> {
  String _chosenValue = "Mental";
  BestTutorSite best = BestTutorSite.other;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: FadeAnimation(
                      1.2, Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: CurvedWidget(
                    child: Container(
                      padding: EdgeInsets.only(top: 0, left: size.width * 0.05),
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
                //  SizedBox(height: size.height*0.05,),
                Center(
                  child: Container(
                    width: size.width * 0.9,
                    child: CheckboxListTile(
                      activeColor: Colors.pink,
                      title: Text(
                        "Hyperlipidemia:",
                        style: TextStyle(
                            color: Colors.pink, fontWeight: FontWeight.bold),
                      ),
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
                Center(
                  child: Container(
                    width: size.width * 0.9,
                    child: ListTile(
                      title: Text(
                        'Other:',
                        style: TextStyle(
                            color: Colors.pink, fontWeight: FontWeight.bold),
                      ),
                      trailing: Radio(
                        activeColor: Colors.pink,
                        value: BestTutorSite.other,
                        groupValue: best,
                        onChanged: (BestTutorSite value) {
                          setState(() {
                            best = value;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    width: size.width * 0.9,
                    child: ListTile(
                      title: Text(
                        'Surgical History:',
                        style: TextStyle(
                            color: Colors.pink, fontWeight: FontWeight.bold),
                      ),
                      trailing: Radio(
                        activeColor: Colors.pink,
                        value: BestTutorSite.surgical,
                        groupValue: best,
                        onChanged: (BestTutorSite value) {
                          setState(() {
                            best = value;
                          });
                        },
                      ),
                    ),
                  ),
                ),

                Center(
                  child: Container(
                    width: size.width*0.8,
                    child: Center(
                      child: DropdownButton<String>(icon: Icon(Icons.arrow_drop_down,color: Colors.pink,),isExpanded: true,
                        value: _chosenValue,style: TextStyle(color: Colors.pink,fontWeight: FontWeight.bold,fontSize: 16),
                        underline: Container(), // this is the magic
                        items: <String>['Mental', 'Dental', 'Physical', 'Psychology']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String value) {
                          setState(() {
                            _chosenValue = value;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    width: size.width * 0.9,
                    child: CheckboxListTile(
                      activeColor: Colors.pink,
                      title: Text(
                        "Known allergies:",
                        style: TextStyle(
                            color: Colors.pink, fontWeight: FontWeight.bold),
                      ),
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
                ),Center(
                  child: Container(
                    width: size.width * 0.9,
                    child: CheckboxListTile(
                      activeColor: Colors.pink,
                      title: Text(
                        "Any menstrual abnormalities:",
                        style: TextStyle(
                            color: Colors.pink, fontWeight: FontWeight.bold),
                      ),
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
                  SizedBox(height: size.height*0.1),
              
              FadeAnimation(
                1.6,
                Center(
                  child: Container(
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
                          fontSize: size.height*0.025,
                          fontWeight: FontWeight.w900
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
