import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        textTheme: TextTheme(
          headlineSmall: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var emailText = TextEditingController();
    var password = TextEditingController();
    var time = DateTime.now();
    var arrName = ["abcd", "efgh", "ijkl", " vbdbnb", "kncjkda", "ksdsgc"];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Flutter Container'),
      ),
      // body: Center(
      //   child: Container(
      //     width: 1000,
      //     height: 100,
      //     color: Colors.lightBlue,
      //     child: Text('Hello world'),
      //   ),
      // ),
      body:
          // Center(
          //   child: Text('Hello World!!!!', style: TextStyle(fontSize: 25)),
          // ),
          // Center(
          //   child: Container(
          //     width: 300,
          //     height: 100,
          //     color: Colors.blueAccent,
          //     child: Center(
          //       child: Text(
          //         'This center of Container',
          //         style: TextStyle(color: Colors.black87, fontSize: 20),
          //       ),
          //     ),
          //   ),
          // ),
          // Text(
          //   "Hello world",
          //   style: TextStyle(
          //     fontSize: 20,
          //     color: Colors.purple,
          //     fontWeight: FontWeight.bold,
          //     backgroundColor: Colors.black,
          //   ),
          // ),
          //types of button
          //1.Text Button(Flat Button)
          //2.Elevated Button(Raised Button)
          //3.Outlined Button
          // TextButton(
          //   child: Text("Click here!!"),
          //   onPressed: () {
          //     print("text Button");
          //   },
          //   onLongPress: () {
          //     print("long pressed");
          //   },
          // ),
          // ElevatedButton(
          //   child: Text("Elevated Button"),
          //   onPressed: () {
          //     print("Elevated Button");
          //   },
          // ),
          // OutlinedButton(
          //   child: Text("Outlined Button"),
          //   onPressed: () {
          //     print("On Pressed on outline Button");
          //   },
          // ),
          //how to import image
          // Center(
          //   child: Container(
          //     width: 100,
          //     height: 100,
          //     child: Image.asset('assets/images/1.jpg'),
          //   ),
          // ),
          // Container(
          //   height: 300,
          //   // width: 300,
          //   // child: Row(
          //   //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   //   crossAxisAlignment: CrossAxisAlignment.center,
          //   //   children: [
          //   //     Text("A"),
          //   //     Text("B"),
          //   //     Text("C"),
          //   //     ElevatedButton(onPressed: () {}, child: Text("Click")),
          //   //   ],
          //   // ),
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //         crossAxisAlignment: CrossAxisAlignment.center,
          //         children: [
          //           Column(
          //             children: [
          //               ElevatedButton(onPressed: () {}, child: Text("Click!")),
          //               ElevatedButton(onPressed: () {}, child: Text("Clickk")),
          //             ],
          //           ),
          //           Text("AA", style: TextStyle(fontSize: 20)),
          //           Text("BB", style: TextStyle(fontSize: 20)),
          //           Text("CC", style: TextStyle(fontSize: 20)),
          //           Text("DD", style: TextStyle(fontSize: 20)),
          //         ],
          //       ),
          //       Text("A", style: TextStyle(fontSize: 20)),
          //       Text("B", style: TextStyle(fontSize: 20)),
          //       Text("C", style: TextStyle(fontSize: 20)),
          //       Text("D", style: TextStyle(fontSize: 20)),
          //       ElevatedButton(onPressed: () {}, child: Text("Click")),
          //     ],
          //   ),
          // ),
          //Inkwell widget
          // Center(
          //   child: InkWell(
          //     onTap: () {
          //       print("on Tap");
          //     },
          //     onLongPress: () {
          //       print("on Long Press");
          //     },
          //     onDoubleTap: () {
          //       print("on Double Tap");
          //     },
          //     child: Container(
          //       width: 200,
          //       height: 200,
          //       color: Colors.amber,
          //       child: InkWell(
          //         onTap: () {
          //           print("Click the click here text");
          //         },
          //         child: Text(
          //           "Click Here",
          //           style: TextStyle(fontSize: 25, color: Colors.black87),
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(5.0),
          //   child: SingleChildScrollView(
          //     child: Column(
          //       children: [
          //         Padding(
          //           padding: const EdgeInsets.all(5.0),
          //           child: SingleChildScrollView(
          //             scrollDirection: Axis.horizontal,
          //             child: Row(
          //               children: [
          //                 Container(
          //                   margin: EdgeInsets.all(11),
          //                   height: 200,
          //                   width: 200,
          //                   color: Colors.green,
          //                 ),
          //                 Container(
          //                   margin: EdgeInsets.all(11),
          //                   height: 200,
          //                   width: 200,
          //                   color: Colors.orange,
          //                 ),
          //                 Container(
          //                   margin: EdgeInsets.all(11),
          //                   height: 200,
          //                   width: 200,
          //                   color: Colors.purple,
          //                 ),
          //               ],
          //             ),
          //           ),
          //         ),
          //         Container(
          //           margin: EdgeInsets.all(11),
          //           height: 200,
          //           // width: 200,
          //           color: Colors.amber,
          //         ),
          //         Container(
          //           margin: EdgeInsets.all(11),
          //           height: 200,
          //           // width: 200,
          //           color: Colors.pinkAccent,
          //         ),
          //         Container(
          //           margin: EdgeInsets.all(11),
          //           height: 200,
          //           // width: 200,
          //           color: Colors.lightBlue,
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          // ListView(
          //   scrollDirection: Axis.horizontal,
          //   reverse: true,
          //   children: [
          //     Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: Text("Helloo"),
          //     ),
          //     Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: Text("Hellooo"),
          //     ),
          //     Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: Text("Helloooo"),
          //     ),
          //   ],
          // ),
          // ListView.builder(
          //   itemBuilder: (context, index) {
          //     return Text(
          //       arrName[index],
          //       style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          //     );
          //   },
          //   itemCount: arrName.length,
          //   scrollDirection: Axis.horizontal,
          //   itemExtent: 100,
          // ),
          // ListView.separated(
          //   itemBuilder: (context, index) {
          //     return Row(
          //       children: [
          //         Padding(
          //           padding: const EdgeInsets.all(8.0),
          //           child: Column(
          //             children: [
          //               Text(
          //                 arrName[index],
          //                 style: TextStyle(
          //                   fontSize: 10,
          //                   fontWeight: FontWeight.bold,
          //                 ),
          //               ),
          //               Padding(
          //                 padding: const EdgeInsets.all(8.0),
          //                 child: Text(
          //                   arrName[index],
          //                   style: TextStyle(
          //                     fontSize: 10,
          //                     fontWeight: FontWeight.bold,
          //                   ),
          //                 ),
          //               ),
          //             ],
          //           ),
          //         ),
          //         Padding(
          //           padding: const EdgeInsets.all(8.0),
          //           child: Text(
          //             arrName[index],
          //             style: TextStyle(
          //               fontSize: 10,
          //               fontWeight: FontWeight.bold,
          //             ),
          //           ),
          //         ),
          //       ],
          //     );
          //   },
          //   itemCount: arrName.length,
          //   // scrollDirection: Axis.horizontal,
          //   separatorBuilder: (context, index) {
          //     return Divider(height: 100, thickness: 4);
          //   },
          // ),
          // Container(
          //   width: double.infinity,
          //   height: double.infinity,
          //   color: Colors.blue.shade50,
          //   child: Center(
          //     child: Container(
          //       width: 150,
          //       height: 150,
          //       // color: Colors.black,
          //       decoration: BoxDecoration(
          //         color: Colors.black,
          //         // borderRadius: BorderRadius.circular(21),
          //         // borderRadius: BorderRadius.only(
          //         //   topLeft: Radius.circular(31),
          //         //   // topRight: Radius.circular(11),
          //         //   bottomLeft: Radius.circular(31),
          //         // ),
          //         border: Border.all(width: 5),
          //         boxShadow: [
          //           BoxShadow(
          //             blurRadius: 11,
          //             color: Colors.red,
          //             spreadRadius: 11,
          //           ),
          //         ],
          //         shape: BoxShape.circle,
          //       ),
          //     ),
          //   ),
          // ),
          // Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Expanded(
          //       flex: 2,
          //       child: Container(width: 50, height: 100, color: Colors.red),
          //     ),
          //     Expanded(
          //       flex: 4,
          //       child: Container(height: 100, width: 50, color: Colors.blue),
          //     ),
          //     Expanded(
          //       flex: 3,
          //       child: Container(width: 50, height: 100, color: Colors.amber),
          //     ),
          //     Expanded(
          //       // flex: 1,
          //       child: Container(width: 50, height: 100, color: Colors.purple),
          //     ),
          //   ],
          // ),
          // Padding(
          //   padding: EdgeInsets.all(8.0),
          //   child: Text("hello world", style: TextStyle(fontSize: 25)),
          // ),
          // ListView.separated(
          //   itemBuilder: (context, index) {
          //     return ListTile(
          //       leading: CircleAvatar(
          //         backgroundImage: AssetImage('assets/images/1.jpg'),
          //         // backgroundColor: Colors.transparent,
          //         radius: 20,
          //       ),
          //       title: Text(arrName[index]),
          //       subtitle: Text("number"),
          //       trailing: Icon(Icons.add),
          //     );
          //   },
          //   itemCount: arrName.length,
          //   // scrollDirection: Axis.horizontal,
          //   separatorBuilder: (context, index) {
          //     return Divider(height: 20, thickness: 4);
          //   },
          // ),
          // Center(
          //   child:
          // Container(
          // width: 100,
          // height: 100,
          // color: Colors.red,
          // child:
          //       CircleAvatar(
          //         child: Container(
          //           width: 60,
          //           height: 60,
          //           child: Column(
          //             children: [
          //               Container(
          //                 width: 30,
          //                 height: 30,
          //                 child: Image.asset('assets/images/1.jpg'),
          //               ),
          //               Text("image"),
          //             ],
          //           ),
          //         ),
          //         // Text('Name', style: TextStyle(color: Colors.amber)),
          //         // backgroundImage: AssetImage('assets/images/1.jpg'),
          //         // backgroundColor: Colors.transparent,
          //         radius: 50,
          //       ),
          // ),
          // Column(
          //   children: [
          //     Text(
          //       "hello world",
          //       style: Theme.of(
          //         context,
          //       ).textTheme.headlineSmall!.copyWith(color: Colors.red),
          //     ),
          //     Text(
          //       "hello world!!!!",
          //       style: Theme.of(context).textTheme.headlineSmall,
          //     ),
          //     Text(
          //       "hello world",
          //       style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          //     ),
          //     Text(
          //       "hello world",
          //       style: TextStyle(fontSize: 09, fontWeight: FontWeight.w400),
          //     ),
          //   ],
          // ),
          // Center(
          //   child: Card(
          //     shadowColor: Colors.blue,
          //     elevation: 15,
          //     child: Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: Text("hello world", style: TextStyle(fontSize: 30)),
          //     ),
          //   ),
          // ),
          // Center(
          //   child: Container(
          //     width: 300,
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         TextField(
          //           // keyboardType: TextInputType.phone,
          //           controller: emailText,
          //           // enabled: false,
          //           decoration: InputDecoration(
          //             hintText: "Enter Email",
          //             focusedBorder: OutlineInputBorder(
          //               borderRadius: BorderRadius.circular(20),
          //               borderSide: BorderSide(color: Colors.deepOrange),
          //             ),
          //             enabledBorder: OutlineInputBorder(
          //               borderRadius: BorderRadius.circular(15),
          //               borderSide: BorderSide(color: Colors.blue),
          //             ),
          //             disabledBorder: OutlineInputBorder(
          //               borderRadius: BorderRadius.circular(15),
          //               borderSide: BorderSide(color: Colors.blueAccent),
          //             ),
          //             // suffixText: "username exits",
          //             suffixIcon: IconButton(
          //               onPressed: () {},
          //               icon: Icon(Icons.remove_red_eye, color: Colors.red),
          //             ),
          //             prefixIcon: Icon(Icons.email, color: Colors.red),
          //           ),
          //         ),
          //         Container(height: 20),
          //         TextField(
          //           controller: password,
          //           obscureText: true,
          //           decoration: InputDecoration(
          //             hintText: "Enter Password",
          //             border: OutlineInputBorder(
          //               borderRadius: BorderRadius.circular(15),
          //               borderSide: BorderSide(color: Colors.black),
          //             ),
          //           ),
          //         ),
          //         ElevatedButton(
          //           onPressed: () {
          //             String uemail = emailText.text.toString();
          //             String upass = password.text;
          //             print("Email:$uemail,password:$upass");
          //           },
          //           child: Text("Login"),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          Center(
            child: Container(
              width: 200,
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Text("curent time: $time", style: TextStyle(fontSize: 15)),
                  Text(
                    "curent time: ${time.month}",
                    style: TextStyle(fontSize: 15),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {});
                    },
                    child: Text("Current time"),
                  ),
                ],
              ),
            ),
          ),
    );
    // );
  }
}
