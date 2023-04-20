import 'package:flutter/material.dart';
import 'package:week6/frm_two.dart';

class pageFormOne extends StatefulWidget {
  pageFormOne({Key? key}) : super(key: key);
  @override
  _pageFormOneState createState() => _pageFormOneState();
}

class _pageFormOneState extends State<pageFormOne> {
  TextEditingController input_email = TextEditingController();
  TextEditingController input_age = TextEditingController();

  Widget inputEmail() {
    return Container(
      child: Center(
        child: TextFormField(
          controller: input_email,
          decoration: InputDecoration(
              labelText: "Email",
              hintText: "กรอกอีเมล์",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0))),
        ),
      ),
      margin: EdgeInsets.fromLTRB(60, 20, 60, 0),
    );
  }

  Widget inputAge() {
    return Container(
      child: Center(
        child: TextFormField(
          controller: input_age,
          decoration: InputDecoration(
              labelText: "Age",
              hintText: "กรอกอายุ",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0))),
        ),
      ),
      margin: EdgeInsets.fromLTRB(60, 20, 60, 0),
    );
  }

  Widget buttonSubmit() {
    return Container(
      child: Center(
        child: RaisedButton(
          color: Colors.blue,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          child: Text("Submit",
              style: TextStyle(
                  fontSize: 18, color: Color.fromRGBO(255, 255, 255, 1))),
          padding: EdgeInsets.fromLTRB(80, 20, 80, 20),
          onPressed: () {
            print("Click me!");
            Map<String, String> datalist = {
              "email": input_email.text,
              "age": input_age.text
            };
//print(datalist["email"]);
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => pageFormTwo(passval: datalist)));
          },
        ),
      ),
      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ListView(
            children: [inputEmail(), inputAge(), buttonSubmit()],
          ),
        ),
      ),
    );
  }
}
