import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:warehouse/providers/theme_manager.dart';
import 'package:warehouse/core/theme/warehouse_theme.dart';
import 'package:warehouse/home.dart';
// import 'package:warehouse/providers/my_provider.dart';

void main() => runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeManager(),
        )
      ],
      child: MyApp(),
    ));

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final lightTheme = WarehouseTheme.light();
  final darkTheme = WarehouseTheme.dark();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: Provider.of<ThemeManager>(context).themeMode,
      routes: {
        "Home": (context) => Home(),
      },
      initialRoute: 'LandPage',
      title: 'Material App',
      home:
          const Directionality(textDirection: TextDirection.rtl, child: Home()),
      debugShowCheckedModeBanner: false,
    );
  }
}
