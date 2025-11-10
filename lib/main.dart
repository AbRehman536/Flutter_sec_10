import 'package:flutter/material.dart';
import 'package:flutter_sec_10/assets_images.dart';
import 'package:flutter_sec_10/bottombar_demo.dart';
import 'package:flutter_sec_10/cupertino_switch.dart';
import 'package:flutter_sec_10/curved_bottombar_demo.dart';
import 'package:flutter_sec_10/floating_action_button.dart';
import 'package:flutter_sec_10/gridview_basic.dart';
import 'package:flutter_sec_10/gridview_builder.dart';
import 'package:flutter_sec_10/gridview_staggered.dart';
import 'package:flutter_sec_10/listview_demo.dart';
import 'package:flutter_sec_10/login_form.dart';
import 'package:flutter_sec_10/multiple_selection.dart';
import 'package:flutter_sec_10/nested_row_column.dart';
import 'package:flutter_sec_10/network_image.dart';
import 'package:flutter_sec_10/pageview_demo.dart';
import 'package:flutter_sec_10/popup_menu.dart';
import 'package:flutter_sec_10/row_column.dart';
import 'package:flutter_sec_10/single_selection.dart';
import 'package:flutter_sec_10/tab_bar_demo.dart';

import 'appbar_demo.dart';
import 'drawer_menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: CupertinoSwitchDemo(),
    );
  }
}
