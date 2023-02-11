import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram/view/style/style.dart';

import '../domen/components/timer_search.dart';
import '../domen/model/search_model.dart';
import '../domen/repository/repo.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController searchController = TextEditingController();
  Search? search;
  String change = '';
  final _delayed = Delayed(milliseconds: 700);

  @override
  void initState() {
    getInfo();

    super.initState();
  }

  getInfo() async {
    await getSearch();
  }

  getSearch() async {
    search = await GetInfo.search(change);
    setState(() {});
    print(search);
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: TextFormField(
                onChanged: (value) async {
                  _delayed.run(() async {
                    change = value;
                    search = await GetInfo.search(searchController.text);
                    setState(() {});
                  });
                },
                controller: searchController,
                decoration: InputDecoration(
                    suffixIcon: change.isNotEmpty
                        ? IconButton(
                            onPressed: () {
                              change = searchController.text = "";
                              setState(() {});
                            },
                            icon: Icon(Icons.close))
                        : SizedBox.shrink(),
                    prefixIcon: Icon(Icons.search),
                    fillColor: Color.fromARGB(255, 200, 197, 197),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 200, 197, 197),
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 200, 197, 197),
                        ),
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            25.verticalSpace,
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: search?.body.hashtags.length ?? 1,
                  itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(left: 14),
                        child: Container(
                          margin: EdgeInsets.only(bottom: 14),
                          height: 52.h,
                          width: 374.w,
                          child: Row(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.purple),
                              ),
                              10.horizontalSpace,
                              Column(
                                children: [
                                  Text(
                                    '${search?.body.hashtags[index].hashtag.name}',
                                    style: Style.textStyleRegular2(),
                                  ),
                                  2.verticalSpace,
                                  Text(
                                    'Title',
                                    style: Style.textStyleRegular2(size: 14),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )),
            )
          ],
        ),
      ),
    );
  }
}
