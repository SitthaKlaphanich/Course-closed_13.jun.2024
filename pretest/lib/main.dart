import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pretest/views/center.dart';
import 'package:pretest/views/center1.dart';
import 'package:pretest/views/center2.dart';
import 'package:pretest/views/center3.dart';
import 'package:pretest/views/column.dart';
import 'package:pretest/views/columnMAS1.dart';
import 'package:pretest/views/columnMAS2.dart';
import 'package:pretest/views/columncc.dart';
import 'package:pretest/views/columnce.dart';
import 'package:pretest/views/columncs.dart';
import 'package:pretest/views/columncst.dart';
import 'package:pretest/views/columnmc.dart';
import 'package:pretest/views/columnme.dart';
import 'package:pretest/views/columnms.dart';
import 'package:pretest/views/columnmsa.dart';
import 'package:pretest/views/columnmsb.dart';
import 'package:pretest/views/columnmse.dart';
import 'package:pretest/views/landing.dart';
import 'package:pretest/views/stateful.dart';
import 'package:pretest/views/stateless.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'PreTest',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(backgroundColor: Colors.blue),
        ),
        initialRoute: "/landinghome",
        debugShowCheckedModeBanner: false,
        routes: <String, WidgetBuilder>{
          "/landinghome": (BuildContext context) => const Landinghome(),
          "/center-page": (BuildContext context) => const Center_page(),
          "/center1-page": (BuildContext context) => const Center1_page(),
          "/center2-page": (BuildContext context) => const Center2_page(),
          "/center3-page": (BuildContext context) => const Center3_page(),
          "/column-page": (BuildContext context) => const Column_page(),
          "/columnms-page": (BuildContext context) => const Columnms_page(),
          "/columnmc-page": (BuildContext context) => const Columnmc_page(),
          "/columnme-page": (BuildContext context) => const Columnme_page(),
          "/columnmsb-page": (BuildContext context) => const Columnmsb_page(),
          "/columnmsa-page": (BuildContext context) => const Columnmsa_page(),
          "/columnmse-page": (BuildContext context) => const Columnmse_page(),
          "/columncs-page": (BuildContext context) => const Columncs_page(),
          "/columncc-page": (BuildContext context) => const Columncc_page(),
          "/columnce-page": (BuildContext context) => const Columnce_page(),
          "/columncst-page": (BuildContext context) => const Columncst_page(),
          "/columnmax-page": (BuildContext context) => const ColumnMAS1_page(),
          "/columnmin-page": (BuildContext context) => const ColumnMAS2_page(),
          "/stateful-page": (BuildContext context) => const Stateful_page(),
          "/stateless-page": (BuildContext context) => const Stateless_page(),
        });
  }
}
