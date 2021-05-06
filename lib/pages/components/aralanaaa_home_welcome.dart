import 'package:aralanaaa/common.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AralanaaaHomeWelcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10)
          ],
          color: Colors.white,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20))),
      padding: EdgeInsets.symmetric(
          horizontal: kHorizontalPadding, vertical: kHorizontalPadding / 2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage('assets/icons/imagenArahy.png'),
              ),
              SizedBox(width: 10),
              Text('¿Qué estás pensando Arahy?'),
              Spacer(),
              CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage('assets/icons/imagenMartin.png'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.only(right: 10),
                  child: ElevatedButton.icon(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(kBorderRadius * 0.5)),
                      elevation: 0,
                      backgroundColor: Theme.of(context).canvasColor,
                      padding: EdgeInsets.symmetric(
                          horizontal: kHorizontalPadding * 0.4,
                          vertical: kHorizontalPadding),
                    ),
                    onPressed: () {},
                    icon: Icon(
                      Icons.camera_alt_rounded,
                      color: Colors.green[300],
                    ),
                    label: Text(
                      "Fotos",
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  child: ElevatedButton.icon(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(kBorderRadius * 0.5)),
                      elevation: 0,
                      backgroundColor: Theme.of(context).canvasColor,
                      padding: EdgeInsets.symmetric(
                          horizontal: kHorizontalPadding * 0.4,
                          vertical: kHorizontalPadding),
                    ),
                    onPressed: () {},
                    icon: FaIcon(
                      FontAwesomeIcons.recordVinyl,
                      color: Colors.red[400],
                    ),
                    label: Text(
                      "En Vivo",
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  child: ElevatedButton.icon(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(kBorderRadius * 0.5)),
                      elevation: 0,
                      backgroundColor: Theme.of(context).canvasColor,
                      padding: EdgeInsets.symmetric(
                          horizontal: kHorizontalPadding * 0.4,
                          vertical: kHorizontalPadding),
                    ),
                    onPressed: () {},
                    icon: Icon(Icons.remove_red_eye, color: Colors.blue[400]),
                    label: Text(
                      "Shorts",
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
