import 'package:aralanaaa/common.dart';
import 'package:aralanaaa/core/themes/theme.dart';
import 'package:aralanaaa/pages/home_page.dart';
import 'package:aralanaaa/pages/menu_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class DirectionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => new _NavegacionModel(),
      child: Scaffold(body: _Paginas(), bottomNavigationBar: _Navigation()),
    );
  }
}

class _Navigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTheme = Provider.of<ThemeChanger>(context);
    final navegacionModel = Provider.of<_NavegacionModel>(context);
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: DecoratedBox(
            decoration: BoxDecoration(
              color: appTheme.currentTheme.bottomAppBarColor,
              borderRadius: BorderRadius.circular(kBorderRadius),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  splashRadius: 0.1,
                  iconSize: kiconSize,
                  padding: EdgeInsets.only(left: 30.0),
                  icon: FaIcon(Icons.home_filled,
                      color: navegacionModel._paginaActual == 0
                          ? Colors.blue[400]
                          : Color.fromRGBO(234, 238, 242, 1)),
                  onPressed: () {
                    navegacionModel.paginaActual = 0;
                  },
                ),
                IconButton(
                  splashRadius: 0.1,
                  iconSize: kiconSize,
                  padding: EdgeInsets.only(right: 0),
                  icon: FaIcon(FontAwesomeIcons.youtube,
                      color: navegacionModel._paginaActual == 2
                          ? Colors.blue[400]
                          : Color.fromRGBO(234, 238, 242, 1)),
                  onPressed: () {},
                ),
                IconButton(
                  splashRadius: 0.1,
                  iconSize: kiconSize,
                  padding: EdgeInsets.only(left: 0),
                  icon: FaIcon(FontAwesomeIcons.userFriends,
                      size: 25,
                      color: navegacionModel._paginaActual == 2
                          ? Colors.blue[400]
                          : Color.fromRGBO(234, 238, 242, 1)),
                  onPressed: () {},
                ),
                IconButton(
                  splashRadius: 0.1,
                  iconSize: kiconSize,
                  padding: EdgeInsets.only(right: 30.0),
                  icon: Icon(FontAwesomeIcons.userCircle,
                      color: navegacionModel._paginaActual == 1
                          ? Colors.blue[400]
                          : Color.fromRGBO(234, 238, 242, 1)),
                  onPressed: () {
                    navegacionModel.paginaActual = 1;
                  },
                )
              ],
            )));
  }
}

class _Paginas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final navegacionModel = Provider.of<_NavegacionModel>(context);
    return PageView(
      controller: navegacionModel.pageController,
      physics: NeverScrollableScrollPhysics(),
      children: [
        HomePage(),
        MenuPage(),
      ],
    );
  }
}

class _NavegacionModel with ChangeNotifier {
  int _paginaActual = 0;
  PageController _pageController = new PageController();

  int get paginaActual => this._paginaActual;

  set paginaActual(int valor) {
    this._paginaActual = valor;

    _pageController.animateToPage(valor,
        duration: Duration(milliseconds: 10), curve: Curves.easeOut);

    notifyListeners();
  }

  PageController get pageController => this._pageController;
}
