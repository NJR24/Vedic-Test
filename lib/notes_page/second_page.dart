import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vedic_test/notes_page/listview_tile.dart';
import 'package:vedic_test/profile/profile_screen.dart';

class SecondPage extends StatelessWidget {
  SecondPage({Key? key}) : super(key: key);
  List<NotesDataModel> _notesDataModel = [
    NotesDataModel(
        "#FFB25A",
        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed",
        "asset/important_note.svg",
        "Notes"),
    NotesDataModel(
      "#7FB041",
        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed",
        "asset/audio.svg",
        "Audio"),
    NotesDataModel(
        "#3F595B",
        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed",
        "asset/video_camera.svg",
        "Video"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor("#3F595B"),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => ProfileScreen()));
          },
          icon: Icon(
            Icons.person_outline_rounded,
          ),
        ),
        title: SvgPicture.asset("asset/appbar_title.svg"),
        titleSpacing: 72,
      ),
      body: Container(
        color: HexColor("#3F595B"),
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50)),
            ),
            child: Column(children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 28.0, right: 28.0, top: 30.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: HexColor('#F4F4F4'),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                          child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle: TextStyle(
                              color: HexColor('#3F595B'),
                              fontSize: 19,
                              fontFamily: 'Avenir_book'),
                          fillColor: HexColor('#F4F4F4'),
                          filled: true,
                          border: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50.0),
                                bottomLeft: Radius.circular(50.0)),
                            borderSide: BorderSide(
                                color: HexColor('#EFF1FA'), width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50.0),
                                bottomLeft: Radius.circular(50.0)),
                            borderSide: BorderSide(
                                color: HexColor('#EFF1FA'), width: 1),
                          ),
                        ),
                      )),
                      Container(
                        width: 60.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                          color: HexColor("#3F595B"),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(50.0),
                              bottomLeft: Radius.circular(50.0),
                              bottomRight: Radius.circular(50.0)),
                        ),
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 30.0,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                flex: 1,
                child: ListView.builder(
                    itemCount: _notesDataModel.length,
                    itemBuilder: (context, index) {
                      final _noteModel = _notesDataModel[index];
                      return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 28.0),
                          child: ListViewTile(
                            notesDataModel: _noteModel,
                          ));
                    }),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
