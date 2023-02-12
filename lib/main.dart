import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram/view/pages/home/general_page.dart';
import 'package:provider/provider.dart';

import 'controller/home_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
       designSize: const Size(428, 926),
        minTextAdapt: true,
        splitScreenMode: true,
      builder: (context,child) {
        return MultiProvider(
          providers: [
                  ChangeNotifierProvider(create: (_) => HomeController()),
                ],
          child: MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              useMaterial3: true,
            ),
            home: const GeneralPage(),
          ),
        );
      }
    );
  }
}

