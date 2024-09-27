import 'package:flutter/material.dart';
import 'package:toku/Components/category_items.dart';
import 'package:toku/constants.dart';
import 'package:toku/screens/colors_page.dart';
import 'package:toku/screens/numbers_page.dart';
import 'package:toku/screens/family_members_page.dart';
import 'package:toku/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xffFFF4D9),
        appBar: AppBar(
          backgroundColor: kAppBarColor,
          title: const Text(
            'Japanese',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Category(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const NumbersPage();
                    },
                  ),
                );
              },
              text: 'Numbers',
              color: kNumbers,
            ),
            Category(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const FamilyMembersPage();
                    },
                  ),
                );
              },
              text: 'Family Members',
              color: kFamilyMembers,
            ),
            Category(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const ColorsPage();
                    },
                  ),
                );
              },
              text: 'Colors',
              color: kColors,
            ),
            Category(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const PhrasesPage();
                    },
                  ),
                );
              },
              text: 'Phrases',
              color: kPhrases,
            ),
          ],
        ),
      ),
    );
  }
}
