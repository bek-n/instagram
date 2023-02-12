import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram/view/domen/components/cached_network_image.dart';
import 'package:provider/provider.dart';

import '../../../controller/home_controller.dart';
import '../../style/style.dart';

class HomePosts extends StatefulWidget {
  final String? text, image, username, comment, avatar, location;
  const HomePosts(
      {super.key,
      required this.text,
      required this.image,
      required this.username,
      required this.comment,
      required this.avatar,
      required this.location});

  @override
  State<HomePosts> createState() => _HomePostsState();
}

class _HomePostsState extends State<HomePosts> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 13, top: 13),
              child: Container(
                height: 31.h,
                width: 31.w,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage('${widget.avatar}')),
                    shape: BoxShape.circle,
                    color: Style.blackColor),
              ),
            ),
            8.horizontalSpace,
            Column(
              children: [
                Text(
                  '${widget.text}',
                  style: Style.textStyleRegular2(size: 12),
                ),
                Text(
                  '${widget.location}',
                  style: Style.textStyleRegular2(size: 11),
                ),
              ],
            ),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.only(right: 12),
              child: Icon(Icons.more_horiz),
            )
          ],
        ),
        7.verticalSpace,
        CustomImageNetwork(
          image: widget.image,
          height: 390,
          width: MediaQuery.of(context).size.width,
          radius: 0,
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
                  text: '${widget.username}  ',
                  style: Style.textStyleRegular(size: 14),
                  children: [
                TextSpan(
                    text: widget.comment,
                    style: Style.textStyleRegular2(size: 11))
              ])),
        )
      ],
    );
  }
}
