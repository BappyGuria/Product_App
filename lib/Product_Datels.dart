import 'package:flutter/material.dart';

class Product_Datels extends StatefulWidget {
  String productNames;
  int productPrice;
  String productImage;

  Product_Datels(
      {super.key, required this.productNames, required this.productPrice,required this.productImage,});

  @override
  State<Product_Datels> createState() => _Product_DatelsState();
}

class _Product_DatelsState extends State<Product_Datels> {
int totalQuanty = 1;

int getProductDrecnebt(){
  if(1 < totalQuanty){
    totalQuanty = totalQuanty - 1;

    setState(() {

    });
  }
  return totalQuanty;
}

int getProductIncrement(){
  if(1 <= totalQuanty){
    totalQuanty = totalQuanty + 1;
    setState(() {

    });
  }
  return totalQuanty;
}


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Product Datls Paje'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.pinkAccent,width: 5)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 10),
                child: Column(
                  children: [
                    Image.network(widget.productImage),
                    Text('${widget.productNames}',style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                    ),),
                    Text('${ totalQuanty * widget.productPrice} Taka',style: TextStyle(
                      fontSize: 20
                    ),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(onPressed: (){
                          getProductDrecnebt();
                        }, child: Text('-')),
                        Text('${totalQuanty}'),
                        TextButton(onPressed: (){
                          getProductIncrement();
                        }, child: Text('+'))
                      ],
                    ),
                    ElevatedButton(onPressed: (){
                      print(widget.productNames);
                      print(totalQuanty * widget.productPrice);
                    }, child: Text('Buy Now'))
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pinkAccent,
                foregroundColor: Colors.white
              ),
                onPressed: (){
                Navigator.pop(context);
                },
                child: Text('Back')
            )
          ],
        ),
      ),
    ));
  }
}
