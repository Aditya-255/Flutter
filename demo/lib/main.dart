// import 'package:demo/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:flutter/rendering.dart';

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
      // MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Custom Widget")),
        backgroundColor: Colors.grey,
      ),
      body: Container(
        child: Column(children: [cartItms(), cartmid(), cartlast()]),
      ),
    );
  }

  Expanded cartlast() =>
      Expanded(flex: 2, child: Container(color: Colors.black));
}

class cartmid extends StatelessWidget {
  const cartmid({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        color: Colors.blueAccent,
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.all(8),
            child: ListTile(
              leading: CircleAvatar(backgroundColor: Colors.red),
              title: Text("Name"),
              subtitle: Text("Mobile no."),
              trailing: Icon(Icons.delete),
            ),
          ),
          itemCount: 10,
        ),
      ),
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
  callback() {
    print("clicked");
  }

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
      body:
          // Center(
          //   child: Container(
          //     width: 1000,
          //     height: 100,
          //     color: Colors.lightBlue,
          //     child: Text('Hello world'),
          //   ),
          // ),
          // body:
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
          // Center(
          //   child: Container(
          //     width: 200,
          //     height: 200,
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         // Text("curent time: $time", style: TextStyle(fontSize: 15)),
          //         Text(
          //           "curent time: ${time.month}",
          //           style: TextStyle(fontSize: 15),
          //         ),
          //         ElevatedButton(
          //           onPressed: () {
          //             setState(() {});
          //           },
          //           child: Text("Current time"),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          // Center(
          //   child: Column(
          //     children: [
          //       Text("Select Date", style: TextStyle(fontSize: 25)),
          //       ElevatedButton(
          //         onPressed: () async {
          //           DateTime? datePicked = await showDatePicker(
          //             context: context,
          //             firstDate: DateTime(2021),
          //             lastDate: DateTime(2026),
          //           );
          //           if (datePicked != null) {
          //             print(
          //               "date seleted:${datePicked.day}-${datePicked.month}-${datePicked.year}",
          //             );
          //           }
          //         },
          //         child: Text("Date"),
          //       ),
          //       ElevatedButton(
          //         onPressed: () async {
          //           TimeOfDay? pickedtime = await showTimePicker(
          //             context: context,
          //             initialTime: TimeOfDay.now(),
          //             initialEntryMode: TimePickerEntryMode.input,
          //           );
          //           if (pickedtime != null) {
          //             print(
          //               "time selected: ${pickedtime.hour}: ${pickedtime.minute}",
          //             );
          //           }
          //         },
          //         child: Text("Select time"),
          //       ),
          //     ],
          //   ),
          // ),
          // GridView.count(
          //   crossAxisCount: 3,
          //   crossAxisSpacing: 5,
          //   mainAxisSpacing: 5,
          //   children: [
          //     Container(color: Colors.red),
          //     Container(color: Colors.amber),
          //     Container(color: Colors.black),
          //     Container(color: Colors.green),
          //     Container(color: Colors.blue),
          //     Container(color: Colors.lime),
          //     Container(color: Colors.orange),
          //     Container(color: Colors.pink),
          //     Container(color: Colors.yellowAccent),
          //   ],
          // ),
          //  Container(height: 100),
          // GridView.extent(
          //   maxCrossAxisExtent: 200,
          //   crossAxisSpacing: 5,
          //   mainAxisSpacing: 5,
          //   children: [
          //     Container(color: Colors.red),
          //     Container(color: Colors.amber),
          //     Container(color: Colors.black),
          //     Container(color: Colors.green),
          //     Container(color: Colors.blue),
          //     Container(color: Colors.lime),
          //     Container(color: Colors.orange),
          //     Container(color: Colors.pink),
          //     Container(color: Colors.yellowAccent),
          //   ],
          // ),
          // GridView.builder(
          //   itemBuilder: (context, index) {
          //     return Container(color: Colors.black);
          //   },
          //   itemCount: 6,
          //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //     crossAxisCount: 3,
          //     crossAxisSpacing: 10,
          //     mainAxisSpacing: 10,
          //   ),
          // ),
          // ElevatedButton(
          //   onPressed: () {
          //     callback();
          //   },
          //   child: Text("click"),
          // ),
          // Stack(
          //   children: [
          //     Container(width: 200, height: 200, color: Colors.blueGrey),
          //     // Container(width: 160, height: 160, color: Colors.orange),
          //     Positioned(
          //       left: 40,
          //       // right: 21,
          //       // bottom: 21,
          //       top: 40,
          //       child: Container(width: 160, height: 160, color: Colors.blue),
          //     ),
          //   ],
          // ),
          // Center(
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       Container(
          //         width: 150,
          //         height: 50,
          //         child: RoundedButton(
          //           btnname: "Login",
          //           // icon: Icon(Icons.play_arrow),
          //           callback: () {
          //             print("login in");
          //           },
          //         ),
          //       ),
          //       Container(
          //         width: 150,
          //         height: 50,
          //         child: RoundedButton(
          //           btnname: "Login",
          //           icon: Icon(Icons.play_arrow),
          //           callback: () {
          //             print("login in");
          //           },
          //           bgcolor: Colors.amber,
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          // Container(
          //   height: double.infinity,
          //   width: double.infinity,
          //   child: Wrap(
          //     direction: Axis.horizontal,
          //     spacing: 11,
          //     runSpacing: 11,
          //     alignment: WrapAlignment.spaceBetween,
          //     children: [
          //       Container(width: 100, height: 100, color: Colors.red),
          //       Container(width: 100, height: 100, color: Colors.amber),
          //       Container(width: 100, height: 100, color: Colors.brown),
          //       Container(width: 100, height: 100, color: Colors.blue),
          //       Container(width: 100, height: 100, color: Colors.black),
          //       Container(width: 100, height: 100, color: Colors.orange),
          //       Container(width: 100, height: 100, color: Colors.cyan),
          //     ],
          //   ),
          // ),
          // ConstrainedBox(
          //   constraints: BoxConstraints(
          //     minHeight: 50,
          //     minWidth: 100,
          //     maxHeight: 80,
          //     maxWidth: 200,
          //   ),
          //   child: SizedBox.expand(
          //     // child: SizedBox.shrink(
          //     // width: 200,
          //     // height: 50,
          //     child: ElevatedButton(onPressed: () {}, child: Text("Click")),
          //   ),
          // ),
          // Wrap(
          //   direction: Axis.vertical,
          //   children: [
          //     SizedBox.square(
          //       dimension: 100,
          //       // width: 200,
          //       // height: 50,
          //       child: ElevatedButton(onPressed: () {}, child: Text("Click")),
          //     ),
          //     SizedBox(height: 20),
          //     SizedBox.square(
          //       dimension: 100,
          //       // width: 200,
          //       // height: 50,
          //       child: ElevatedButton(onPressed: () {}, child: Text("Click")),
          //     ),
          //     SizedBox(height: 50,),
          //     SizedBox.square(
          //       dimension: 100,
          //       // width: 200,
          //       // height: 50,
          //       child: ElevatedButton(onPressed: () {}, child: Text("Click")),
          //     ),
          //   ],
          // ),
          // RichText(
          //   text: TextSpan(
          //     style: TextStyle(color: Colors.black, fontSize: 25),
          //     children: [
          //       TextSpan(
          //         text: "hello ",
          //         style: TextStyle(
          //           color: Colors.grey,
          //           fontSize: 50,
          //           fontWeight: FontWeight.bold,
          //         ),
          //       ),
          //       TextSpan(
          //         text: "world ",
          //         style: TextStyle(
          //           color: Colors.blue,
          //           fontWeight: FontWeight.bold,
          //           fontSize: 50,
          //         ),
          //       ),
          //       TextSpan(
          //         text: "welcome ",
          //         style: TextStyle(color: Colors.red),
          //       ),
          //     ],
          //   ),
          // ),
          // Center(
          //   child: Row(
          //     children: [
          //       Icon(Icons.add_alert, size: 50, color: Colors.blue),
          //       FaIcon(FontAwesomeIcons.clock, size: 50),
          //     ],
          //   ),
          // ),
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.blueGrey,
            child: Stack(
              children: [
                Positioned(
                  bottom: 1,
                  right: 1,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
    );
    // );
  }
}

class cartItms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.amber,
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8),
            child: SizedBox(
              width: 100,
              child: CircleAvatar(backgroundColor: Colors.green),
            ),
          ),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
