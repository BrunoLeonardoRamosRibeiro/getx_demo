import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controllers/global_controller.dart';
import 'package:getx_demo/models/product.dart';

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<GlobalController>(
      id: 'products',
      builder: (controller) => ListView.builder(
        itemBuilder: (_, index) {
          final Product product = controller.products[index];

          return ListTile(
            title: Text(product.name),
            subtitle: Text("USD \$${product.price}"),
            trailing: IconButton(
              icon: Icon(Icons.favorite, color: product.isfavorite? Colors.red : Colors.grey,),
              onPressed:(){
                controller.onFavorite(index, !product.isfavorite);
              },
            ),
          );
        },
        itemCount: controller.products.length,
      ),
    );
  }
}
