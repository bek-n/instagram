import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram/view/domen/components/cached_network_image.dart';
import 'package:instagram/view/pages/search/user_info_page.dart';
import '../../domen/components/custom_search_textform.dart';
import '../../domen/components/search_results.dart';
import '../../domen/components/timer_search.dart';
import '../../domen/model/Single_User_model.dart';
import '../../domen/model/search_model.dart';
import '../../domen/repository/repo.dart';

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
  bool isLoading = true;
  Singleuser? user;

  @override
  void initState() {
    getInfo();

    super.initState();
  }

  getInfo() async {
    await getSearch();

    setState(() {});
  }

  getSearch() async {
    isLoading;
    setState(() {});
    search = await GetInfo.search(change);
    isLoading = false;
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
            CustomSearchTextForm(
              onChange: (value) async {
                _delayed.run(() async {
                  change = value;
                  search = await GetInfo.search(searchController.text);
                  setState(() {});
                });
              },
              controller: searchController,
              prefixIcon: Icon(Icons.search),
              suffixicon: change.isNotEmpty
                  ? IconButton(
                      onPressed: () {
                        change = searchController.text = "";
                        setState(() {});
                      },
                      icon: Icon(Icons.close))
                  : SizedBox.shrink(),
            ),
            25.verticalSpace,
            change.isNotEmpty
                ? isLoading
                    ? CircularProgressIndicator()
                    : Expanded(
                        child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: search?.body.users.length ?? 0,
                            itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.only(left: 14),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                            builder: (_) => UserPage(
                                                  id: '${search?.body.users[index].user.pkId}',
                                                  indx: index,
                                                  Searchinfo: '${search?.body}',
                                                )));
                                  },
                                  child: SearchingResult(
                                    title1:
                                        '${search?.body.users[index].user.username}',
                                    title2:
                                        '${search?.body.users[index].user.fullName}',
                                    image:
                                        '${search?.body.users[index].user.profilePicUrl}',
                                    verified:
                                        '${search?.body.users[index].user.isVerified}',
                                  ),
                                ))),
                      )
                : Expanded(
                    child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                mainAxisSpacing: 3,
                                crossAxisSpacing: 3,
                                crossAxisCount: 3),
                        itemBuilder: (context, index) => CustomImageNetwork(
                            radius: 0,
                            image:
                                'https://source.unsplash.com/random/$index')),
                  )
          ],
        ),
      ),
    );
  }
}
