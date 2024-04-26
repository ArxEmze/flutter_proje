import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_proje/core/storage.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:preload_page_view/preload_page_view.dart';

import '../../widgets/page/boarding_item.dart';

class BoardingScreen extends StatefulWidget {
  const BoardingScreen({super.key});

  @override
  State<BoardingScreen> createState() => _BoardingScreenState();
}

class _BoardingScreenState extends State<BoardingScreen> {

  int page = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: InkWell(
              onTap: () async {
                final storage = Storage();
                await storage.firstLaunch();
                GoRouter.of(context).replace("/home");
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: page == 2 ? const Text("Home") : const Text("Skip"),
              ),
            ),
          ),
        ],
      ),
        body: SafeArea(
          child: PreloadPageView(
            onPageChanged: (value) {
              setState(() {
                page = value;
              });
            },
            scrollDirection: Axis.vertical,
            children: const [
              BoardingItem(
                image:
                    "https://static.vecteezy.com/system/resources/previews/012/335/181/non_2x/mobile-shopping-concept-a-man-and-a-woman-buy-things-in-the-online-store-through-a-big-smartphone-e-commerce-and-online-shopping-illustration-in-flat-style-vector.jpg",
                title: "Buy all you need.",
                description:
                    "You can order what you want in just seconds using our awesome application",
              ),
              BoardingItem(
                image:
                    "https://static.vecteezy.com/system/resources/previews/012/335/181/non_2x/mobile-shopping-concept-a-man-and-a-woman-buy-things-in-the-online-store-through-a-big-smartphone-e-commerce-and-online-shopping-illustration-in-flat-style-vector.jpg",
                title: "Buy all you need.",
                description:
                    "You can order what you want in just seconds using our awesome application",
              ),
              BoardingItem(
                image:
                    "https://static.vecteezy.com/system/resources/previews/012/335/181/non_2x/mobile-shopping-concept-a-man-and-a-woman-buy-things-in-the-online-store-through-a-big-smartphone-e-commerce-and-online-shopping-illustration-in-flat-style-vector.jpg",
                title: "Buy all you need.",
                description:
                    "You can order what you want in just seconds using our awesome application",
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                page == 0 ? CupertinoIcons.circle_filled : CupertinoIcons.circle,
              ),
              Icon(
                page == 1 ? CupertinoIcons.circle_filled : CupertinoIcons.circle,
              ),
              Icon(
                page == 2 ? CupertinoIcons.circle_filled : CupertinoIcons.circle,
              ),
            ],
          ),
        ));
  }
}
