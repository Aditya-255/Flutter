import 'package:flutter/material.dart';

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
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

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
    var arrName = ["abcd", "efgh", "ijkl", " vbdbnb", "kncjkda", "ksdsgc"];
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
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
          Container(
            
          )
    );
  }
}
