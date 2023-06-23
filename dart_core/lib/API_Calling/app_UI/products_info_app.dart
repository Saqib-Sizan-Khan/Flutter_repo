import 'package:flutter/material.dart';
import '../model/product_model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<ProductModel>> fetchProduct() async {
  final response =
  await http.get(Uri.parse('https://dummyjson.com/products'));

  if (response.statusCode == 200) {
    final List<dynamic> jsonResponse = json.decode(response.body);
    List<ProductModel> products =
    jsonResponse.map((data) => ProductModel.fromJson(data)).toList();
    return products;
  } else {
    throw Exception('Failed to fetch Data');
  }
}

class Product_UI extends StatelessWidget {
  const Product_UI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Product Info')),

      body: FutureBuilder<List<ProductModel>>(
        future: fetchProduct(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            List<ProductModel> products = snapshot.data ?? [];

            return ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        products[index].title,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'Brand: ${products[index].brand}',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Category: ${products[index].category}',
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.teal,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'Price: ${products[index].price}',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFCD9B04)),
                      )
                    ],
                  ),
                );
                ;
              },
            );
          }
        },
      ),
    );
  }
}
