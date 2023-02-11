import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram/view/style/style.dart';

import '../domen/model/search_model.dart';
import '../domen/repository/repo.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late TextEditingController searchController;
  Search? search;
  @override
  void initState() {
    getInfo();
    searchController =TextEditingController();
    super.initState();
  }

  getInfo() async {
    search = await GetInfo.search(searchController.text);
    print('User: $search');
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
                controller: searchController,
                decoration: InputDecoration(
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
            ListView.builder(itemBuilder: (context,index)=>Container(
                height: 52.h,
                width: 374.w,
            ))
          ],
        ),
      ),
    );
  }
}
