import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram/view/pages/home/home_page.dart';
import 'package:instagram/view/pages/search_page.dart';
import 'package:instagram/view/style/style.dart';
import 'package:provider/provider.dart';

import '../../../controller/home_controller.dart';

class GeneralPage extends StatefulWidget {
  const GeneralPage({super.key});

  @override
  State<GeneralPage> createState() => _GeneralPageState();
}

class _GeneralPageState extends State<GeneralPage> {
  List<Widget> mainPages = [
    const HomePage(),
    const SearchPage(),
    const Placeholder(),
    const Placeholder(),
    const Placeholder(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: context.watch<HomeController>().currentIndex,
        children: mainPages,
      ),
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: context.watch<HomeController>().currentIndex,
          onTap: (value) {
            context.read<HomeController>().setIndex(value);
          },
          selectedIconTheme: IconThemeData(color: Style.blackColor),
          type: BottomNavigationBarType.fixed,
          items: [
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: ''),
            const BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
            const BottomNavigationBarItem(
                icon: Icon(Icons.add_box_outlined), label: ''),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/svg/Icons.svg'), label: ''),
            BottomNavigationBarItem(
                label: '',
                icon: Container(
                  height: 25.h,
                  width: 25.w,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/images/me.jpeg'),
                          fit: BoxFit.cover)),
                )),
          ]),
    );
  }
}
