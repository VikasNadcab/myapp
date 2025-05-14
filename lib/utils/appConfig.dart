import 'package:flutter/material.dart';
import 'package:tabler_icons/tabler_icons.dart';

class Appconfig {
  static String AppName = "Photo Editing";

  List<Map> createOptions = [
    {
      "icon":TablerIcons.photo,
      "title":"Edit a Photo",
      "color":Color.fromARGB(255, 30, 191, 250),
    },
    {
      "icon":TablerIcons.resize,
      "title":"Resize Image",
      "color": Color.fromARGB(255, 214, 41, 202),

    },
    {
      "icon":TablerIcons.layout_board,
      "color":Color(0xff962fbf),
      "title":"Make a Collage",
    },
    {
      "icon":TablerIcons.stack_2,
      "color":Color(0xff4f5bd5),
      "title":"Edit Background",
    },
    {
      "icon":TablerIcons.adjustments_alt,
      "color":Color.fromARGB(255, 221, 30, 250),
      "title":"Apply effects",
    },
    {
      "icon":TablerIcons.face_mask,
      "color":Color.fromARGB(255, 250, 30, 188),
      "title":"Retouch Face",
    },
    
    ];
  //  Color(0xfffeda75),
  //   Color(0xfffa7e1e),
  //   Color(0xffd62976),
  //   Color(0xff962fbf),
  //   Color(0xff4f5bd5),
   List<Map> bottomNavigation = [
    {
      "icon":Icons.explore_outlined,
      "title":"Explorer",
    },
    {
      "icon":TablerIcons.briefcase,
      "title":"Hire",
    },
    {
      "icon":TablerIcons.circle_plus,
      "title":"New One",
    },
    {
      "icon":TablerIcons.folder,
      "title":"Files",
    },
    {
      "icon":TablerIcons.user,
      "title":"User",
    },
  ];
}