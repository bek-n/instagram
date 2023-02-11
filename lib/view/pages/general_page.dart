import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram/view/pages/home_page.dart';
import 'package:provider/provider.dart';

import '../../controller/home_controller.dart';

class GeneralPage extends StatefulWidget {
  const GeneralPage({super.key});

  @override
  State<GeneralPage> createState() => _GeneralPageState();
}



class _GeneralPageState extends State<GeneralPage> {
  List<Widget> mainPages = [
    const HomePage(),
    const Placeholder(),
    const Placeholder(),
    const Placeholder(),
    const Placeholder(),
  ];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: context.watch<HomeController>().currentIndex,
        children: mainPages,
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,
     bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
      const BottomNavigationBarItem(icon: Icon(Icons.home)),
      const BottomNavigationBarItem(icon: Icon(Icons.search)),
      const BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined)),
      BottomNavigationBarItem(icon: SvgPicture.asset('assets/svg/Icons.svg')),
      BottomNavigationBarItem(icon: Container(
        height: 25.h,
        width: 25.w,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(image: AssetImage('assets/images/me.jpeg'),fit: BoxFit.cover)
        ),
      )),
     ]),
    );
  }
}