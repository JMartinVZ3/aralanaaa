import 'package:aralanaaa/common.dart';
import 'package:aralanaaa/core/models/posts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AralanaaaPosts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: demoPosts.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        childAspectRatio: 0.7,
      ),
      itemBuilder: (context, i) => AralanaaaPost(post: demoPosts[i]),
    );
  }
}

class AralanaaaPost extends StatelessWidget {
  const AralanaaaPost({
    Key key,
    @required this.post,
  }) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: kBorderRadius * 0.5, vertical: kBorderRadius * 0.5),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.10),
                offset: Offset(0, 5),
                blurRadius: 5)
          ],
          borderRadius: BorderRadius.circular(kBorderRadius),
          color: AralanaaaColors.cardsLight),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/icons/imagenMartin.png')),
                SizedBox(width: kHorizontalPadding),
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      post.name,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Text(
                      post.date,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ],
                )),
                Container(
                  child: Icon(
                    Icons.star,
                    color: Colors.blue[300],
                  ),
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                      color: Theme.of(context).canvasColor,
                      borderRadius: BorderRadius.circular(10)),
                ),
                SizedBox(width: kHorizontalPadding * 0.5),
                Container(
                  child: Icon(Icons.more_vert),
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                      color: Theme.of(context).canvasColor,
                      borderRadius: BorderRadius.circular(10)),
                )
              ],
            ),
            SizedBox(height: kHorizontalPadding * 0.5),
            Container(
                child: SingleChildScrollView(child: Text(post.description))),
            SizedBox(height: kHorizontalPadding * 0.5),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(post.image), fit: BoxFit.cover),
                ),
              ),
            ),
            SizedBox(height: kHorizontalPadding * 0.5),
            Row(children: [Text(post.comments), Text(" " + post.shared)]),
            SizedBox(height: kHorizontalPadding * 0.5),
            Row(children: [
              InkWell(
                onTap: () {},
                child: Container(
                  child: Center(
                    child: FaIcon(
                      FontAwesomeIcons.thumbsUp,
                      color: Colors.blue,
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
              SizedBox(width: kHorizontalPadding * 0.5),
              InkWell(
                onTap: () {},
                child: Container(
                  child: Center(
                    child: FaIcon(
                      FontAwesomeIcons.comment,
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
              SizedBox(width: kHorizontalPadding * 0.5),
              InkWell(
                onTap: () {},
                child: Container(
                  child: Center(
                    child: FaIcon(
                      FontAwesomeIcons.share,
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
              Spacer(),
              Container(
                child: Text(
                  'Martin y 50 personas',
                  style: TextStyle(fontSize: 10),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(height: kHorizontalPadding * 0.5),
              Container(
                width: 50,
                child: Stack(
                  children: [
                    Positioned(
                      left: 15,
                      child: CircleAvatar(
                        backgroundColor: Colors.red,
                        child: Center(
                          child: FaIcon(
                            FontAwesomeIcons.solidHeart,
                            color: Colors.white,
                            size: 12,
                          ),
                        ),
                        radius: 12,
                      ),
                    ),
                    Positioned(
                      child: CircleAvatar(
                        backgroundColor: Colors.blue[400],
                        child: Center(
                          child: FaIcon(
                            FontAwesomeIcons.solidThumbsUp,
                            color: Colors.white,
                            size: 12,
                          ),
                        ),
                        radius: 12,
                      ),
                    ),
                  ],
                ),
              )
            ]),
            SizedBox(height: kHorizontalPadding * 0.5),
            Container(
              width: double.infinity,
              height: 2,
              color: Theme.of(context).canvasColor,
            ),
            SizedBox(height: kHorizontalPadding * 0.5),
            Row(
              children: [
                CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/icons/imagenMartin.png')),
                SizedBox(width: kHorizontalPadding),
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      post.name,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Text(
                      post.date,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ],
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
