import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController productNameController = TextEditingController();
  TextEditingController productRateController = TextEditingController();
  TextEditingController textqty = TextEditingController();
  TextEditingController textgst = TextEditingController();
  TextEditingController textamount = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  TextField(
                    controller: productNameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter Product Name",
                      labelText: "Product Name",
                    ),
                  ),
                  SizedBox(height: 15),
                  TextField(
                    controller: productNameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter Rete",
                      labelText: "Product Rate",
                    ),
                  ),
                  SizedBox(height: 15),
                  TextField(
                    controller: textqty,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter Qty",
                      labelText: "Product Qty",
                    ),
                  ),
                  SizedBox(height: 15),
                  TextField(
                    controller: textgst,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter GST",
                      labelText: "Product GSt",
                    ),
                  ),
                  SizedBox(height: 15),
                  TextField(
                    controller: textamount,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter amount",
                      labelText: "Product amount",
                    ),
                  ),
                  SizedBox(height: 15),
                  ElevatedButton(onPressed: () {}, child: Text("Add Product")),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    color: Colors.black12,
                    child: Center(child: Text("Total Amount")),
                  ),
                ),
                SizedBox(width: 10),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 100,
                      color: Colors.black12,
                      child: Center(child: Text("0.00")),
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      color: Colors.black12,
                      child: Center(child: Text("0.00")),
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      color: Colors.black12,
                      child: Center(child: Text("0.00")),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
