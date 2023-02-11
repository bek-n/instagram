import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../../controller/home_controller.dart';
import '../../style/style.dart';

class HomePosts extends StatefulWidget {
  final String text;
  const HomePosts({super.key, required this.text});

  @override
  State<HomePosts> createState() => _HomePostsState();
}

class _HomePostsState extends State<HomePosts> {
  @override
  Widget build(BuildContext context) {
    return  Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 13, top: 13),
                        child: Container(
                          height: 31.h,
                          width: 31.w,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Style.blackColor),
                        ),
                      ),
                      8.horizontalSpace,
                      Text(
                        '${widget.text}',
                        style: Style.textStyleRegular2(size: 12),
                      ),
                      const Spacer(),
                      const Padding(
                        padding: EdgeInsets.only(right: 12),
                        child: Icon(Icons.more_horiz),
                      )
                    ],
                  ),
                  7.verticalSpace,
                  Container(
                    height: 390.h,
                    width: MediaQuery.of(context).size.width,
                    color: Style.greyColor90,
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            context.read<HomeController>().onChange();
                          },
                          icon: context.watch<HomeController>().isLiked
                              ? const Icon(
                                  Icons.favorite_outline,
                                  size: 30,
                                )
                              : const Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 30,
                                )),
                      SvgPicture.asset('assets/svg/comment.svg'),
                      12.horizontalSpace,
                      const Icon(Icons.send),
                      const Spacer(),
                      const Padding(
                        padding: EdgeInsets.only(right: 13),
                        child: Icon(
                          Icons.bookmark_border,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: RichText(
                        text: TextSpan(
                            text: 'Username  ',
                            style: Style.textStyleRegular(size: 14),
                            children: [
                          TextSpan(
                              text:
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt',
                              style: Style.textStyleRegular2(size: 11))
                        ])),
                  )
                ],
              );
    }
}