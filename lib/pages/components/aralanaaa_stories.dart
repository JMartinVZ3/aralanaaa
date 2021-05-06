import 'package:aralanaaa/common.dart';
import 'package:aralanaaa/core/models/stories.dart';
import 'package:flutter/material.dart';

class AralanaaStories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: demoStories.length,
        itemBuilder: (_, i) {
          return StoriesCard(
            story: demoStories[i],
          );
        });
  }
}

class StoriesCard extends StatelessWidget {
  const StoriesCard({
    Key key,
    @required this.story,
  }) : super(key: key);

  final Story story;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
              height: 100,
              margin: EdgeInsets.symmetric(
                  horizontal: kHorizontalPadding * 0.5,
                  vertical: kHorizontalPadding * 0.5),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(story.image), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(kBorderRadius),
                  color: AralanaaaColors.cardsLight,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.10),
                        offset: Offset(0, 5),
                        blurRadius: 5)
                  ])),
          Positioned(
            bottom: -10,
            child: Container(
                margin: EdgeInsets.symmetric(
                    horizontal: kHorizontalPadding * 0.5,
                    vertical: kHorizontalPadding * 0.5),
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kBorderRadius),
                    color: Colors.blue[400],
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.10),
                          offset: Offset(0, 5),
                          blurRadius: 5)
                    ])),
          ),
          Positioned(
              bottom: 3,
              child: CircleAvatar(
                radius: 10,
                backgroundImage: AssetImage('assets/icons/imagenMartin.png'),
              )),
        ],
      ),
    );
  }
}
