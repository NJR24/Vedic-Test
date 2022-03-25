import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vedic_test/notes_page/second_page.dart';

import './checkbox.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('asset/grey_background.jpg'), fit: BoxFit.fill),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.1,
              horizontal: MediaQuery.of(context).size.width * 0.1),
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 18),
                    child: Container(
                      decoration: BoxDecoration(
                          color: HexColor('#F8F8F8'),
                          borderRadius: BorderRadius.circular(70)),
                      width: 140,
                      height: 140,
                    ),
                  ),
                  Text(
                    "Login",
                    style: TextStyle(
                        fontFamily: 'Avenir_Medium',
                        color: HexColor('#3F595B'),
                        fontSize: 17),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 180, top: 20, bottom: 5),
                    child: Text(
                      'Username',
                      style: TextStyle(
                        color: HexColor('#6F7071').withOpacity(1),
                        fontFamily: 'Avenir_Book',
                        fontSize: 13,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 41,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 17),
                      child: TextField(
                        decoration: InputDecoration(
                          hoverColor: HexColor("#F5F5F5"),
                          fillColor: HexColor('#F5F5F5'),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: HexColor('#F5F5F5')),
                            borderRadius: BorderRadius.all(Radius.zero),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: HexColor('#F5F5F5')),
                            borderRadius: BorderRadius.all(Radius.zero),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 180, top: 20, bottom: 5),
                    child: Text(
                      'Password',
                      style: TextStyle(
                        color: HexColor('#6F7071').withOpacity(1),
                        fontFamily: 'Avenir_Book',
                        fontSize: 13,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 41,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 17,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hoverColor: HexColor("#F5F5F5"),
                          fillColor: HexColor('#F5F5F5'),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: HexColor('#F5F5F5')),
                              borderRadius: BorderRadius.all(Radius.zero)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: HexColor('#F5F5F5')),
                              borderRadius: BorderRadius.all(Radius.zero)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10, bottom: 13),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CheckBox(),
                        Text(
                          'Remember Me',
                          style: TextStyle(
                              fontFamily: 'Avenir_Medium',
                              fontSize: 9,
                              color: HexColor('#3F595B').withOpacity(1)),
                        ),
                        Spacer(),
                        TextButton(
                          onPressed: null,
                          child: Text(
                            'Forgot password?',
                            style: TextStyle(
                              fontFamily: 'Avenir_Medium',
                              fontSize: 9,
                              color: HexColor('#FFB25A').withOpacity(1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 93,
                    height: 30,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          HexColor('#FFB25A'),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero),
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SecondPage()));
                      },
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                            fontSize: 11, fontFamily: 'Avenir_Medium'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
