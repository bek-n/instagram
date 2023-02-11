import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram/view/pages/story_page.dart';
import 'package:instagram/view/style/style.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Style.whiteColor,
        title: Image.asset(
          'assets/images/Logo.png',
          height: 30,
        ),
        actions: [
          Icon(Icons.favorite_outline),
          26.horizontalSpace,
          Padding(
            padding: const EdgeInsets.only(right: 14),
            child: SvgPicture.asset('assets/svg/Direct.svg'),
          ),
          
        ],
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('show stories'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const StroyPage();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
