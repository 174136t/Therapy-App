import 'package:flutter/material.dart';
import 'package:therapy_app/Animation/fade_animation.dart';
import 'package:therapy_app/Widgets/constant.dart';
import 'package:therapy_app/Widgets/curved_widget.dart';

class TreatmentHistory extends StatefulWidget {
  @override
  _TreatmentHistoryState createState() => _TreatmentHistoryState();
}

class _TreatmentHistoryState extends State<TreatmentHistory> {
  String date;
  String cusId;
  String problem;
  String docNote;

  TextEditingController dateController = TextEditingController();
  TextEditingController cusIdController = TextEditingController();
  TextEditingController problemController = TextEditingController();
  TextEditingController docnoteController = TextEditingController();

  Widget dateField() {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Date',
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
                controller: dateController,
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
                      borderSide:
                          BorderSide(color: Colors.transparent, width: 2),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    prefixIcon: Icon(
                      Icons.calendar_today,
                      color: Colors.pink,
                    ),
                    errorStyle: TextStyle(color: Colors.red),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.pink),
                    hintText: '2020-12-09'),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'date can\'t be empty';
                  }
                },
                onSaved: (String value) {
                  this.date = value;
                },
              )),
        ],
      ),
    );
  }

  Widget cusIdField() {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Customer Id',
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
                controller: cusIdController,
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
                      borderSide:
                          BorderSide(color: Colors.transparent, width: 2),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    prefixIcon: Icon(
                      Icons.person_pin,
                      color: Colors.pink,
                    ),
                    errorStyle: TextStyle(color: Colors.red),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.pink),
                    hintText: 'CS5155'),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Customer Id can\'t be empty';
                  }
                },
                onSaved: (String value) {
                  this.cusId = value;
                },
              )),
        ],
      ),
    );
  }

  Widget problemField() {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Problem',
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
                controller: problemController,
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
                      borderSide:
                          BorderSide(color: Colors.transparent, width: 2),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    prefixIcon: Icon(
                      Icons.question_answer,
                      color: Colors.pink,
                    ),
                    errorStyle: TextStyle(color: Colors.red),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.pink),
                    hintText: 'I have headache'),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Problem can\'t be empty';
                  }
                },
                onSaved: (String value) {
                  this.problem = value;
                },
              )),
        ],
      ),
    );
  }

  Widget docNoteField() {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Doctor Note',
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
                controller: docnoteController,
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
                      borderSide:
                          BorderSide(color: Colors.transparent, width: 2),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    prefixIcon: Icon(
                      Icons.note,
                      color: Colors.pink,
                    ),
                    errorStyle: TextStyle(color: Colors.red),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.pink),
                    hintText: 'Feeling good'),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Doctor note can\'t be empty';
                  }
                },
                onSaved: (String value) {
                  this.docNote = value;
                },
              )),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: FadeAnimation(
            1.2,
            Column(
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
                                    'Treatment History Details',
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
                dateField(),
                SizedBox(
                  height: size.height * 0.02,
                ),
                cusIdField(),
                SizedBox(
                  height: size.height * 0.02,
                ),
                problemField(),
                SizedBox(
                  height: size.height * 0.02,
                ),
                docNoteField(),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Container(
                  height: size.height * 0.25,
                  width: size.width * .8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.black, width: 2)),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
