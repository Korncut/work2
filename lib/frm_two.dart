import 'package:flutter/material.dart';
import 'package:week6/frm_one.dart';

class pageFormTwo extends StatefulWidget {
  final Map passval;
  pageFormTwo({Key? key, required this.passval}) : super(key: key);
  @override
  _pageFormTwoState createState() => _pageFormTwoState();
}

class _pageFormTwoState extends State<pageFormTwo> {
  int byear = 0;
  Widget labelEmail() {
    return Container(
      child: Text("อีเมล์คุณคือ " + widget.passval["email"]),
    );
  }

  Widget labelAge() {
    return Container(
      child: Text("พ.ศ. เกิด คือ " + byear.toString()),
    );
  }

  Widget buttonBack() {
    return Container(
      child: Center(
        child: RaisedButton(
          color: Colors.blue,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          child: Text("Back",
              style: TextStyle(
                  fontSize: 18, color: Color.fromRGBO(255, 255, 255, 1))),
          padding: EdgeInsets.fromLTRB(80, 20, 80, 20),
          onPressed: () {
            print("Click me!");
            Navigator.of(context)
                .pop(MaterialPageRoute(builder: (context) => pageFormOne()));
          },
        ),
      ),
      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
    );
  }

  void initState() {
    print("ค่าที่ส่งมา: " + widget.passval["email"]);
    calAge();
  }

  void calAge() {
    int age = int.parse(widget.passval["age"]);
    int cyear = 2565;
    byear = cyear - age;
    print("พศ เกิด: " + byear.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
//ListView //Column //Row
            children: [labelEmail(), labelAge(), buttonBack()],
          ),
        ),
      ),
    );
  }
}
