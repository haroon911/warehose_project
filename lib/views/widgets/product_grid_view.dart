import 'package:flutter/material.dart';
import 'package:warehouse/data/models/product/product.dart';
import 'package:warehouse/views/widgets/product_thumbnail.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ProductGridView extends StatelessWidget {
  ProductGridView({super.key, required this.products});

  List<Product> products;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 5, top: 16, right: 5),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 250,
            childAspectRatio: 0.63,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        physics: NeverScrollableScrollPhysics(),
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) {
          final simpleProduct = products[index];
          return ProductThumbnail(
            product: simpleProduct,
          );
        },
      ),
    );
  }
}



/**
 * MasonryGridView.count(
        crossAxisCount: 2,
        addSemanticIndexes: false,
        mainAxisSpacing: 24,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) =>
            ProductThumbnail(product: products[index]),
        itemCount: products.length,
      ),
 *  
      
 */


// class ProductThumbnail extends StatelessWidget {
//   const ProductThumbnail({super.key, required this.product});
//   final Product product;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(5),
//       child: buildCardProduct(product),
//     );
//   }

//   Widget buildCardProduct(Product product) {
//     return ProductThumbnail(product: product);
//   }
// }


/**
 * Stack(alignment: Alignment.center, children: [
        Ink.image(
          image: AssetImage(product.productItem.first.imageUrl.first),
          fit: BoxFit.cover,
        ),
      ]),
 * 
 * 
 *  Positioned(
            // child: Text('${product.productItem.first.imageUrl.first}'))
            child: Image.asset(
          product.productItem.first.imageUrl.first,
          fit: BoxFit.cover,
        ))
 */