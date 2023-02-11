import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../pages/story_page.dart';
import '../model/user_model.dart';

class Histories extends StatelessWidget {
  const Histories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 63,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: sampleUsers.length,
          itemBuilder: (context, index) {
            final user = sampleUsers[index];

            return GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => const StroyPage()));
              },
              child: Container(
                margin: EdgeInsets.only(right: 12),
                height: 61.h,
                width: 61.w,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(
                          user.imageUrl,
                        ),
                        fit: BoxFit.cover)),
              ),
            );
          }),
    );
  }
}
