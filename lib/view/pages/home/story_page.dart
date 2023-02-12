import 'package:flutter/material.dart';
import 'package:story/story_image.dart';
import 'package:story/story_page_view.dart';

import '../../domen/model/stroy_model.dart';
import '../../domen/model/user_model.dart';

class StroyPage extends StatefulWidget {
  const StroyPage({super.key});

  @override
  State<StroyPage> createState() => _StroyPageState();
}

class _StroyPageState extends State<StroyPage> {
  late ValueNotifier<IndicatorAnimationCommand> indicatorAnimationController;

  @override
  void initState() {
    super.initState();
    indicatorAnimationController = ValueNotifier<IndicatorAnimationCommand>(
        IndicatorAnimationCommand.resume);
  }

  @override
  void dispose() {
    indicatorAnimationController.dispose();
    super.dispose();
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: StoryPageView(
          itemBuilder: (context, pageIndex, storyIndex) {
            final user = sampleUsers[pageIndex];
            final story = user.stories[storyIndex];
            return Stack(
              children: [
                Positioned.fill(
                  child: Container(color: Colors.black),
                ),
                Positioned.fill(
                  child: StoryImage(
                    key: ValueKey(story.imageUrl),
                    imageProvider: NetworkImage(
                      story.imageUrl,
                    ),
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 44, left: 8),
                  child: Row(
                    children: [
                      Container(
                        height: 32,
                        width: 32,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(user.imageUrl),
                            fit: BoxFit.cover,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        user.userName,
                        style: const TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
          gestureItemBuilder: (context, pageIndex, storyIndex) {
            return Stack(children: [
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(top: 32),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    color: Colors.white,
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
            ]);
          },
          indicatorAnimationController: indicatorAnimationController,
          initialStoryIndex: (pageIndex) {
            if (pageIndex == 0) {
              return 1;
            }
            return 0;
          },
          pageLength: sampleUsers.length,
          storyLength: (int pageIndex) {
            return sampleUsers[pageIndex].stories.length;
          },
          onPageLimitReached: () {
            Navigator.pop(context);
          }),
    ));
  }
}
