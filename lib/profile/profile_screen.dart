import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor("#3F595B"),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
          ),
        ),
        title: SvgPicture.asset("asset/appbar_title.svg"),
        titleSpacing: 72,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: HexColor("#3F595B"),
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 100.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color: Color.fromARGB(255, 201, 194, 194)),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text("Upload Profile Photo"),
                      CustomTextField(name: "First name"),
                      CustomTextField(name: "Last name"),
                      CustomTextField(name: "Father's name"),
                      CustomTextField(name: "Mother's name"),
                      CustomTextField(name: "Mobile number"),
                      CustomTextField(name: "Email address"),
                      CustomTextField(name: "Address line 1"),
                      CustomTextField(name: "State"),
                      CustomTextField(name: "District"),
                      CustomTextField(name: "pin Code"),
                      CustomTextField(name: "Grade in which student is studing"),
                      CustomTextField(name: "Medium of instruction"),
                      SizedBox(
                        width: 93,
                        child: ElevatedButton(
                          onPressed: null,
                          child: Text(
                            'UPDATE',
                            style: TextStyle(
                                fontFamily: 'Avenir_Medium',
                                fontSize: 11,
                                color: HexColor("#FFFFFF")),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(HexColor("#FFB25A")),
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  CustomTextField({Key? key, required this.name}) : super(key: key);
  String name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: TextStyle(
                fontFamily: 'Avenir_Book',
                fontSize: 15.0,
                color: HexColor("#3F595B")),
          ),
          const SizedBox(
            height: 6,
          ),
          TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              filled: true,
              fillColor: HexColor('#F4F4F4'),
            ),
          ),
        ],
      ),
    );
  }
}
