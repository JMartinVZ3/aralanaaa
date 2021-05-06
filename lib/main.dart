import 'package:aralanaaa/core/routes/routes.dart';
import 'package:aralanaaa/core/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => ThemeChanger(1)),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final currentTheme = Provider.of<ThemeChanger>(context).currentTheme;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aralanaaa',
      initialRoute: 'directions',
      routes: appRoutes,
      theme: currentTheme,
    );
  }
}
