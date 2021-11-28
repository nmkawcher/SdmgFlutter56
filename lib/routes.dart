import 'dart:js';

import 'package:flutter/material.dart';
import 'package:sdmg_flutter56/http_example/http_example.dart';
import 'package:sdmg_flutter56/media_query/media_query_example.dart';
import 'package:sdmg_flutter56/name_routes/page_four.dart';
import 'package:sdmg_flutter56/name_routes/page_one.dart';
import 'package:sdmg_flutter56/name_routes/page_three.dart';
import 'package:sdmg_flutter56/name_routes/page_two.dart';
import 'package:sdmg_flutter56/text_field/text_field_example.dart';

final Map<String,WidgetBuilder>routes={
  PageOne.routesName:(context)=>PageOne(),
  PageTwo.routesName:(context)=>PageTwo(),
  PageThree.routesName:(context)=>PageThree(),
  PageFour.routesName:(context)=>PageFour(),
  MyTextFieldExample.routesName:(context)=>MyTextFieldExample(),
 MediaQueryExample.routesName:(context)=>MediaQueryExample(),
};
