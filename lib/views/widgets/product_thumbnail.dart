import 'package:flutter/material.dart';
import 'package:warehouse/data/models/product/product.dart';

class ProductThumbnail extends StatelessWidget {
  const ProductThumbnail({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      constraints: const BoxConstraints.expand(height: 350, width: 25),
      child: Column(
        children: [
          Expanded(
            child: Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              child: Ink.image(
                image: AssetImage(product.productItem.first.imageUrl.first),
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0).copyWith(top: 5, bottom: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.about,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 14),
                ),
                Text(
                  '${product.productItem.first.price} ريال',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 14, color: Colors.green),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
//   Widget buildPositionedButtonsTabe() {
//     return Positioned(
//       left: 0,
//       // bottom: 0,
//       // right: 0,
//       // top: 0,
//       child: Container(
//         padding: const EdgeInsets.only(top: 10, left: 2, right: 2, bottom: 10),
//         decoration: BoxDecoration(
//             // color: Color.fromARGB(255, 216, 61, 66).withOpacity(0.45),
//             borderRadius: BorderRadius.only(bottomRight: Radius.circular(24))),
//         // width: 40,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Icon(
//               Icons.favorite_border_sharp,
//               color: Colors.white.withOpacity(1),
//               size: 30,
//             ),
//             SizedBox(height: 10),
//             Icon(
//               color: Colors.white.withOpacity(1),
//               Icons.book,
//               size: 30,
//             ),
//             SizedBox(height: 10),
//             Icon(
//               Icons.shopping_cart_outlined,
//               size: 30,
//               color: Colors.white.withOpacity(1),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

/**
 * Center(
      child: Container(
        constraints: const BoxConstraints.expand(width: 350, height: 450),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(product.productItem.first.imageUrl.first),
              fit: BoxFit.cover),
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Column(
          children: [
            // DONE: Add author information
            // const FittedBox(
            //   fit: BoxFit.fitWidth,
            //   child: AuthorCard(
            //     authorName: 'Haroon Amer',
            //     title: 'Software Enginering',
            //     imageProvider: AssetImage('assets/haroon.jpg'),
            //   ),
            // ),
            // DONE: Add Positioned text
            Expanded(
                child: Stack(
              children: [
                Positioned(
                  top: 16,
                  right: 16,
                  child: Text(
                    'Recipes',
                    style: WarehouseTheme.lightTextTheme.headline1,
                  ),
                ),
                Positioned(
                  bottom: 70,
                  left: 16,
                  child: RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      'Smoothies',
                      style: WarehouseTheme.lightTextTheme.headline1,
                    ),
                  ),
                )
              ],
            )),
          ],
        ),
      ),
    );
 */