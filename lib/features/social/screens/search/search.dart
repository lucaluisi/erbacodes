import 'package:erba_coders/features/social/screens/search/widgets/search_post_result.dart';
import 'package:erba_coders/features/social/screens/search/widgets/search_profile_result.dart';
import 'package:erba_coders/utils/constants/colors.dart';
import 'package:erba_coders/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            actions: [
              Padding(
                padding: EdgeInsets.only(left: TSizes.defaultSpace / 2),
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Iconsax.search_normal,
                      color: Colors.white,
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: TColors.grey),
                        borderRadius: BorderRadius.all(
                            Radius.circular(TSizes.borderRadiusLg))),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: TColors.grey),
                        borderRadius: BorderRadius.all(
                            Radius.circular(TSizes.borderRadiusLg))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: TColors.white),
                        borderRadius: BorderRadius.all(
                            Radius.circular(TSizes.borderRadiusLg))),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: TColors.red),
                        borderRadius: BorderRadius.all(
                            Radius.circular(TSizes.borderRadiusLg))),
                    focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: TColors.orange),
                        borderRadius: BorderRadius.all(
                            Radius.circular(TSizes.borderRadiusLg))),
                    hintText: "Search",
                  ),
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              IconButton(onPressed: () {}, icon: Icon(Iconsax.filter)),
              Padding(
                padding: EdgeInsets.only(right: TSizes.defaultSpace / 2),
              ),
            ],
            bottom: const TabBar(tabs: [
              Tab(text: "Profiles"),
              Tab(text: "Posts"),
            ]),
          ),
          body: TabBarView(children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  TSearchProfileResult(username: "profilo123"),
                  TSearchProfileResult(username: "profilo123"),
                  TSearchProfileResult(username: "profilo123"),
                  TSearchProfileResult(username: "profilo123"),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  TSearchPostResult(username: "profile123", title: "Titolo", description: "descrizione", date: "1-1-1111", upvotes: 324, downvotes: 1),
                  TSearchPostResult(username: "profile123", title: "Titolo", description: "descrizione", date: "1-1-1111", upvotes: 324, downvotes: 1),
                  TSearchPostResult(username: "profile123", title: "Titolo", description: "descrizione", date: "1-1-1111", upvotes: 324, downvotes: 1),
                  TSearchPostResult(username: "profile123", title: "Titolo", description: "descrizione", date: "1-1-1111", upvotes: 324, downvotes: 1),
                ],
              ),
            )
          ])),
    );
  }
}
