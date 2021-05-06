import 'package:aralanaaa/common.dart';
import 'package:aralanaaa/pages/components/aralanaaa_home_welcome.dart';
import 'package:aralanaaa/pages/components/aralanaaa_posts.dart';
import 'package:aralanaaa/pages/components/aralanaaa_stories.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: EdgeInsets.only(top: 5, bottom: 5, left: kHorizontalPadding),
          child: CircleAvatar(
            backgroundColor: Colors.blue[400],
            child: Center(
              child: FaIcon(
                FontAwesomeIcons.facebookF,
                color: Colors.white,
                size: 25,
              ),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.1,
        actions: [
          InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Center(
                child: FaIcon(
                  FontAwesomeIcons.search,
                  color: Colors.grey,
                  size: 20,
                ),
              ),
              width: 35,
              decoration: BoxDecoration(
                  color: Theme.of(context).canvasColor,
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
          SizedBox(width: kHorizontalPadding / 2),
          InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Center(
                child: FaIcon(
                  FontAwesomeIcons.bell,
                  color: Colors.grey,
                  size: 20,
                ),
              ),
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                  color: Theme.of(context).canvasColor,
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
          SizedBox(width: kHorizontalPadding / 2),
          InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Center(
                child: FaIcon(
                  FontAwesomeIcons.facebookMessenger,
                  color: Colors.blue[400],
                  size: 20,
                ),
              ),
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                  color: Theme.of(context).canvasColor,
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
          SizedBox(width: kHorizontalPadding / 2),
          CircleAvatar(
              backgroundImage: AssetImage('assets/icons/imagenArahy.png')),
          SizedBox(width: kHorizontalPadding)
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Expanded(flex: 1, child: AralanaaaHomeWelcome()),
            Expanded(flex: 1, child: AralanaaStories()),
            Expanded(flex: 4, child: AralanaaaPosts()),
          ]),
        ),
      ),
    );
  }
}
