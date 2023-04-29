import 'package:flutter/material.dart';
import 'package:my_store/Data-Model/product_api.dart';
import 'package:my_store/Global%20variable/globalVariable.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final products = GlobalVariable.myData;
    return GridView.builder(
      itemCount: products?.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (BuildContext context, int index) {
        final myProd = Product.fromJson(products![index]);
        return myGridTile(myProd: myProd);
      },
    );
  }
}

class myGridTile extends StatelessWidget {
  const myGridTile({
    super.key,
    required this.myProd,
  });

  final Product myProd;

  @override
  Widget build(BuildContext context) {
    return GridTile(
      footer: GridTileBar(
        backgroundColor: Colors.black12,
        title: Text(myProd.id.toString()),
        subtitle: Text(
          myProd.title,
          style: const TextStyle(color: Colors.orangeAccent),
        ),
        trailing: const Icon(Icons.favorite_border),
      ),
      child: Image.network(myProd.image),
    );
  }
}
