import 'package:flutter/material.dart';
import 'data_utils.dart';

class JSON_UI extends StatelessWidget {
  JSON_UI({super.key});

  List <Map> product_data = Product_data.product_list;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Local JSON Data Call'),
      ),
      body:

      ListView.builder(
          itemCount: product_data.length,
          itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 220,
                width: 380,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(product_data[index]['thumbnail']), fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.circular(20)
                ),
              ),
              SizedBox(height: 10,),

              Text(product_data[index]['title'], style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),),
              Text(product_data[index]['description'], style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),

              Text('Price:  \$${product_data[index]['price']}', style: TextStyle(fontSize: 22, color: Colors.teal, fontWeight: FontWeight.w600),),
              Text('Rating: ${product_data[index]['rating']}', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Color(0xFFCD9B04)),)

            ],
          ),
        );
      }),
    );
  }
}
