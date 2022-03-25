import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class ListViewTile extends StatelessWidget {
  ListViewTile({Key? key, required this.notesDataModel}) : super(key: key);
  NotesDataModel notesDataModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 19.0, bottom: 19.0),
      child: Container(
        decoration: BoxDecoration(
            color: HexColor(notesDataModel.color),
            borderRadius: BorderRadius.circular(
              30,
            ),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  offset: Offset(0, 8.0),
                  blurRadius: 8.0,
                  spreadRadius: 2)
            ]),
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              notesDataModel.title,
              style: TextStyle(
                  color: HexColor("#FFFFFF"),
                  fontSize: 35,
                  fontFamily: 'Avenir_Medium'),
            ),
           
            Row(
              children: [
                SizedBox(
                  width: 34.0,
                  height: 37.0,
                  child: SvgPicture.asset(notesDataModel.icon),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 60),
                    child: Text(
                      notesDataModel.desc,
                      style: TextStyle(
                          color: HexColor("#FFFFFF"),
                          fontSize: 13,
                          fontFamily: 'Avenir_Light'),
                    ),
                  ),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}

class NotesDataModel {
  final String color;
  final String title;
  final String desc;
  final String icon;
  NotesDataModel(this.color, this.desc, this.icon, this.title);
}
