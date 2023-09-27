import 'package:flutter/material.dart';
import 'package:recponciveapp/Product_Datels.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.pinkAccent,
          centerTitle: true,
          foregroundColor: Colors.white,
          elevation: 10
        )
      ),
      home: MyHomePage(),

    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Product> products =[
    Product('Apple iPhone 11', 1000, 0,'https://www.pngmart.com/files/15/Apple-iPhone-11-PNG-Image.png'),
    Product('Apple iPhone 12', 1500, 0,'https://www.pngmart.com/files/15/Apple-iPhone-12-PNG-Picture.png'),
    Product('Apple iPhone 12 Pro', 700, 0,'https://www.pngmart.com/files/15/Apple-iPhone-12-Transparent-PNG.png'),
    Product('Apple iPhone 12 Pro +', 1700, 0,'https://www.pngmart.com/files/15/Apple-iPhone-12-PNG-Photo.png'),
    Product('Apple iPhone 10', 750, 0,'https://www.pngmart.com/files/15/Apple-iPhone-12-Background-PNG.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Product List'),
        ),
        body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            // var productList = products[index];

          return ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Product_Datels(productNames: products[index].productName, productPrice: products[index].producPrice,productImage: products[index].productImage,productQuenty: products[index].quanti,)));
              print('Product Name is ${products[index].productName}');
            },
            title: Text('${products[index].productName}'),
            subtitle: Text('${products[index].producPrice}'),
            trailing: Image.network('${products[index].productImage}'),
          );
        },),
      ),
    );
  }
}




class Product{
  final String productName;
  final int producPrice;
  int quanti;
  final String productImage;

  Product(this.productName, this.producPrice,this.quanti, this.productImage);
}