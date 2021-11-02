import 'dart:js';

import 'package:flutter/material.dart';
import 'package:sdmg_flutter56/name_routes/page_four.dart';
import 'package:sdmg_flutter56/name_routes/page_one.dart';
import 'package:sdmg_flutter56/name_routes/page_three.dart';
import 'package:sdmg_flutter56/name_routes/page_two.dart';

final Map<String,WidgetBuilder>routes={
  PageOne.routesName:(context)=>PageOne(),
  PageTwo.routesName:(context)=>PageTwo(),
  PageThree.routesName:(context)=>PageThree(),
  PageFour.routesName:(context)=>PageFour()
};
