import 'package:flutter/material.dart';
import 'package:http/http.dart';
import '../models/product.dart';
import '../screens/update_product_screen.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key, required this.product, required this.onDelete, required this.onUpdate,
  });

  final Product product;
  final Function onDelete;
  final Function onUpdate;  // New callback

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      tileColor: Colors.white,
      title: Text(product.productName),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Product Code: ${product.productCode}'),
          Text('Price: \$${product.unitPrice}'),
          Text('Quantity: ${product.quantity}'),
          Text('Total Price: \$${product.totalPrice}'),
          const Divider(),
          ButtonBar(
            children: [
              TextButton.icon(
                onPressed: () {
                  onUpdate();  // Trigger the update
                },
                icon: const Icon(Icons.edit),
                label: const Text('Edit'),
              ),
              TextButton.icon(
                onPressed: () {
                  _deleteProduct(context);
                },
                icon: const Icon(
                  Icons.delete_outline,
                  color: Colors.red,
                ),
                label: const Text(
                  'Delete',
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Future<void> _deleteProduct(BuildContext context) async {
    Uri uri = Uri.parse('http://164.68.107.70:6060/api/v1/DeleteProduct/${product.id}');
    Response response = await get(uri);

    if (response.statusCode == 200) {
      onDelete();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Failed to delete product')),
      );
    }
  }
}

