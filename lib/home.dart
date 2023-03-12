import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:warehouse/providers/theme_manager.dart';
import 'package:warehouse/views/screens/homeScreen.dart';
import 'package:warehouse/views/screens/productScreen.dart';
import 'package:warehouse/views/widgets/product_grid_view.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        elevation: 0,
        title: Row(
          children: const [
            Icon(Icons.warehouse_rounded),
            Text(
              'هامور ',
              style: TextStyle(fontFamily: "Cairo"),
            ),
          ],
        ),
        actions: [
          Switch(
            value:
                Provider.of<ThemeManager>(context).themeMode == ThemeMode.dark,
            onChanged: (value) =>
                Provider.of<ThemeManager>(context, listen: false)
                    .toggleTheme(value),
          )
        ],
      ),
      body: SafeArea(child: HomeScreen()),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.shopping_cart),
      ),
    );
  }
}
