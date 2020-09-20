import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/product_item.dart';
import '../providers/products_provider.dart';


class ProductGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final products = productsData.items;

    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: products.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider(
        // Alternatively:
        //ChangeNotifierProvider.value(
          // value: products[i]
        //)
           //builder: (BuildContext, ctx) => products[i],
            //create: (BuildContext ctx) => products[i], 
              create: (BuildContext ctx) { return products[i]; }, // Alternative syntax
              child: ProductItem(
            // products[i].id,
            // products[i].title,
            // products[i].imageUrl,
            // products[i].price,
          ),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
