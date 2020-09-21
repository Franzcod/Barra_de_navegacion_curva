

import 'package:flutter/cupertino.dart';
import 'package:navigation_bar_curve/pages/page_one.dart';
import 'package:navigation_bar_curve/pages/page_three.dart';
import 'package:navigation_bar_curve/pages/page_two.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {

  'page_one'     : (_) => PageOne(),
  'page_two'     : (_) => PageTwo(),
  'page_three'   : (_) => PageThree(),
 


};