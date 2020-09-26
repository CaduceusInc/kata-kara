import 'package:flutter/material.dart';

import '../widgets/products_grid_view.dart';

enum FilterOptions {
  Favorites,
  All,
}

class ProductsOverviewScreen extends StatefulWidget {
  @override
  _ProductsOverviewScreenState createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {
  var _showOnlyFavorites = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pqb Shop",
        ),
        actions: [
          PopupMenuButton(
            onSelected: (FilterOptions selectedValue) {
              setState(() {
                if (selectedValue == FilterOptions.Favorites) {
                // productsContainer.showFavoriteOnly();
                _showOnlyFavorites = true;
              } else {
                // productsContainer.showAll();
                _showOnlyFavorites = false;
              }
              });
            },
            icon: Icon(
              Icons.more_vert,
            ),
            itemBuilder: (_) => [
              PopupMenuItem(
                  child: Row(
                    children: [
                      Text('Only Favorites'),
                      Icon(Icons.favorite),
                    ],
                  ),
                  value: FilterOptions.Favorites),
              PopupMenuItem(
                  child: Row(
                    children: [
                      Text('Show all'),
                      Icon(Icons.more),
                    ],
                  ),
                  value: FilterOptions.All),
            ],
          ),
        ],
      ),
      body: ProductGridView(_showOnlyFavorites),
    );
  }
}
