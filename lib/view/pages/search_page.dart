import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: TextFormField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
