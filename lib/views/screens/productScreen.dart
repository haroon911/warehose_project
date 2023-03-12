import 'package:flutter/material.dart';
import 'package:warehouse/core/theme/warehouse_theme.dart';
import 'package:warehouse/views/widgets/product_grid_view.dart';
import '../../data/models/models.dart';
import '../../api/mockWarehouseApi.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({super.key});
  final mockApi = MockWarehouseApi();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: mockApi.getProducts(),
      builder: (context, AsyncSnapshot<List<Product>> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.data != null) {
            print(snapshot.data!.length.toString());
          } else {
            print('bye');
          }
          return ProductGridView(products: snapshot.data ?? []);
        } else {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(
                  color: Theme.of(context).primaryColor,
                )
              ],
            ),
          );
        }
      },
    );
  }
}
