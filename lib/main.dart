import 'package:flutter/material.dart';
import 'package:fluttercomp/widgets/GroupWidget.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key,}) : super(key: key);

  

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
            ),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.red[600],
        onTap: _onItemTapped,
      ),
      appBar: AppBar(
        centerTitle: true,

        title: Image.asset('assets/fluchal.PNG'),
       
        backgroundColor: Colors.white,

        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          const Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: CircleAvatar(
              radius: 20.0,
              backgroundImage: AssetImage("assets/aaa.jpeg"),
              backgroundColor: Colors.transparent,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text(
                      "Your next event",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.209,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          
                          // ignore: prefer_const_literals_to_create_immutables
                          
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                        Text(
                                  "SAT, FEB 19 12:00 PM",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.brown),
                                                            ),
                                                            Text(
                                  "Flutter Festival,",
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                                            ),
                                                            Text(
                                  "Islamabad",
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                                            ),
                                                            const SizedBox(
                                  height: 5,
                                                            ),
                                                            Text(
                                  "Flutter Islamabad",
                                  style: GoogleFonts.notoSans(
                                    // fontWeight: FontWeight.bold,
                                    color: Colors.grey[700],
                                    fontSize: 14,
                                  ),
                                                            ),
                                    ],
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset("assets/ban.jpeg", width: 120,))
                              ],
                            ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 24,
                                    width: 24,
                                    child: Icon(Icons.check_circle, color: Color.fromARGB(255, 32, 245, 39), size: 28),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.02,
                                  ),
                                  Text(
                                    "93 going",
                                    style: GoogleFonts.roboto(
                                      color: Colors.grey[500],
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.02,
                                  ),
                                  Container(
                                    height: 24,
                                    width: 24,
                                    child: Image.asset(
                                      "assets/era.png",
                                      color: Colors.grey,
                                    ),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.02,
                                  ),
                                  Text(
                                    "Online event",
                                    style: GoogleFonts.roboto(
                                      color: Colors.grey[500],
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  Container(
                                      height: 24,
                                      width: 24,
                                      child: Image.asset(
                                        "assets/upload.png",
                                        color: Colors.grey,
                                      ))
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0, bottom: 10),
                      child: Row(
                        children: [
                          Text(
                            "Your groups",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Expanded(child: Container()),
                          Text(
                            "See all",
                            style: GoogleFonts.roboto(
                                fontSize: 18,
                                color: Colors.blue[600],
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 180,
                      width: MediaQuery.of(context).size.width,
                      child: ListView(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: [
                          GroupWidget(
                            title: "Flutter",
                            sub: "Islamabad",
                            image: "assets/aaa.jpeg",
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                           GroupWidget(
                            title: "Github",
                            sub: "Islamabad",
                            image: "assets/ban.jpeg",
                          ),
                          const SizedBox(
                            width: 7,
                          ), GroupWidget(
                            title: "Meetup",
                            sub: "Islamabad",
                            image: "assets/aaa.jpeg",
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey[400],
                  height: 1,
                ),
              ),
              ListTile(
                leading: Image.asset("assets/trop.PNG", scale: 1),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.grey[800],
                ),
                title: Text(
                  "Start a new group",
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500
                  ),
                ),
                subtitle: Text(
                  "Organize your own events",
                  style: GoogleFonts.roboto(color: Colors.grey[600]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey[200],
                  height: 8,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//   int _selectedIndex = 0;

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search),
//             label: 'Explore',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(
//               Icons.notifications,
//             ),
//             label: 'School',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.message),
//             label: 'School',
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         unselectedItemColor: Colors.grey,
//         selectedItemColor: Colors.red[600],
//         onTap: _onItemTapped,
//       ),
//       appBar: AppBar(
//         centerTitle: true,

//         title: Image.asset('assets/fluchal.PNG'),
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         backgroundColor: Colors.white,

//         // ignore: prefer_const_literals_to_create_immutables
//         actions: [
//           const Padding(
//             padding: EdgeInsets.only(right: 8.0),
//             child: CircleAvatar(
//               radius: 20.0,
//               backgroundImage: AssetImage("assets/aaa.jpeg"),
//               backgroundColor: Colors.transparent,
//             ),
//           )
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,

//                   // ignore: prefer_const_literals_to_create_immutables
//                   children: [
//                     const Text(
//                       "Your next event",
//                       style: TextStyle(
//                         fontSize: 24,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     SizedBox(
//                       height: MediaQuery.of(context).size.height * 0.03,
//                     ),
//                     Container(
//                       width: MediaQuery.of(context).size.width,
//                       height: MediaQuery.of(context).size.height * 0.209,
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(5),
//                         // ignore: prefer_const_literals_to_create_immutables
//                         boxShadow: [
//                           const BoxShadow(
//                             color: Colors.grey,
//                             blurRadius: 4,
//                             offset: Offset(0, 2), // Shadow position
//                           ),
//                         ],
//                       ),
//                       child: Padding(
//                         padding: const EdgeInsets.symmetric(
//                             horizontal: 20, vertical: 20),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               "SAT, FEB 19 12:00 PM",
//                               style: GoogleFonts.poppins(
//                                   fontWeight: FontWeight.w700,
//                                   color: Colors.brown),
//                             ),
//                             Text(
//                               "Flutter Festival,",
//                               style: GoogleFonts.roboto(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 18,
//                               ),
//                             ),
//                             Text(
//                               "Islamabad",
//                               style: GoogleFonts.roboto(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 18,
//                               ),
//                             ),
//                             const SizedBox(
//                               height: 5,
//                             ),
//                             Text(
//                               "Flutter Islamabad",
//                               style: GoogleFonts.notoSans(
//                                 // fontWeight: FontWeight.bold,
//                                 color: Colors.grey[700],
//                                 fontSize: 14,
//                               ),
//                             ),
//                             const SizedBox(
//                               height: 5,
//                             ),
//                             Row(
//                               children: [
//                                 Container(
//                                   height: 24,
//                                   width: 24,
//                                   child: Image.asset("assets/check.png"),
//                                 ),
//                                 SizedBox(
//                                   width:
//                                       MediaQuery.of(context).size.width * 0.02,
//                                 ),
//                                 Text(
//                                   "93 going",
//                                   style: GoogleFonts.roboto(
//                                     color: Colors.grey[500],
//                                     fontWeight: FontWeight.w500,
//                                     fontSize: 14,
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   width:
//                                       MediaQuery.of(context).size.width * 0.02,
//                                 ),
//                                 Container(
//                                   height: 24,
//                                   width: 24,
//                                   child: Image.asset(
//                                     "assets/era.png",
//                                     color: Colors.grey,
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   width:
//                                       MediaQuery.of(context).size.width * 0.02,
//                                 ),
//                                 Text(
//                                   "Online event",
//                                   style: GoogleFonts.roboto(
//                                     color: Colors.grey[500],
//                                     fontWeight: FontWeight.w500,
//                                     fontSize: 14,
//                                   ),
//                                 ),
//                                 Expanded(child: Container()),
//                                 Container(
//                                     height: 24,
//                                     width: 24,
//                                     child: Image.asset(
//                                       "assets/upload.png",
//                                       color: Colors.grey,
//                                     ))
//                               ],
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(top: 40.0, bottom: 10),
//                       child: Row(
//                         children: [
//                           Text(
//                             "Your groups",
//                             style: GoogleFonts.roboto(
//                                 fontWeight: FontWeight.bold, fontSize: 20),
//                           ),
//                           Expanded(child: Container()),
//                           Text(
//                             "See all",
//                             style: GoogleFonts.roboto(
//                                 fontSize: 18,
//                                 color: Colors.blue[600],
//                                 fontWeight: FontWeight.bold),
//                           )
//                         ],
//                       ),
//                     ),
//                     Container(
//                       height: 180,
//                       width: MediaQuery.of(context).size.width,
//                       child: ListView(
//                         scrollDirection: Axis.horizontal,
//                         children: [
//                           Container(
//                             width: 120.0,
//                             height: 180.0,
//                             decoration: const BoxDecoration(
//                                 borderRadius: BorderRadius.only(
//                                   topRight: Radius.circular(15.0),
//                                   topLeft: Radius.circular(15.0),
//                                   bottomRight: Radius.circular(15.0),
//                                   bottomLeft: Radius.circular(15.0),
//                                 ),
//                                 image: DecorationImage(
//                                     image: AssetImage("assets/aaa.jpeg"),
//                                     fit: BoxFit.cover)),
//                             child: Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.end,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     "Flutter ",
//                                     style: GoogleFonts.roboto(
//                                         fontSize: 18,
//                                         color: Colors.white,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                   Text(
//                                     "Islamabad",
//                                     style: GoogleFonts.roboto(
//                                         fontSize: 18,
//                                         color: Colors.white,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           const SizedBox(
//                             width: 7,
//                           ),
//                           Container(
//                             width: 120.0,
//                             height: 180.0,
//                             decoration: const BoxDecoration(
//                                 borderRadius: BorderRadius.only(
//                                   topRight: Radius.circular(15.0),
//                                   topLeft: Radius.circular(15.0),
//                                   bottomRight: Radius.circular(15.0),
//                                   bottomLeft: Radius.circular(15.0),
//                                 ),
//                                 image: DecorationImage(
//                                     image: AssetImage("assets/aaa.jpeg"),
//                                     fit: BoxFit.cover)),
//                             child: Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.end,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     "Flutter ",
//                                     style: GoogleFonts.roboto(
//                                         fontSize: 18,
//                                         color: Colors.white,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                   Text(
//                                     "Karachi",
//                                     style: GoogleFonts.roboto(
//                                         fontSize: 18,
//                                         color: Colors.white,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           const SizedBox(
//                             width: 7,
//                           ),
//                           Container(
//                             width: 120.0,
//                             height: 180.0,
//                             decoration: const BoxDecoration(
//                                 borderRadius: BorderRadius.only(
//                                   topRight: Radius.circular(15.0),
//                                   topLeft: Radius.circular(15.0),
//                                   bottomRight: Radius.circular(15.0),
//                                   bottomLeft: Radius.circular(15.0),
//                                 ),
//                                 image: DecorationImage(
//                                     image: AssetImage("assets/aaa.jpeg"),
//                                     fit: BoxFit.cover)),
//                             child: Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.end,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     "GitHub ",
//                                     style: GoogleFonts.roboto(
//                                         fontSize: 18,
//                                         color: Colors.white,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                   Text(
//                                     "Virtual Meetup",
//                                     style: GoogleFonts.roboto(
//                                         fontSize: 18,
//                                         color: Colors.white,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           const SizedBox(
//                             width: 7,
//                           ),
//                           Container(
//                             width: 120.0,
//                             height: 180.0,
//                             decoration: const BoxDecoration(
//                                 borderRadius: BorderRadius.only(
//                                   topRight: Radius.circular(15.0),
//                                   topLeft: Radius.circular(15.0),
//                                   bottomRight: Radius.circular(15.0),
//                                   bottomLeft: Radius.circular(15.0),
//                                 ),
//                                 image: DecorationImage(
//                                     image: AssetImage("assets/aaa.jpeg"),
//                                     fit: BoxFit.cover)),
//                             child: Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.end,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     "Flutter ",
//                                     style: GoogleFonts.roboto(
//                                         fontSize: 18,
//                                         color: Colors.white,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                   Text(
//                                     "Islamabad",
//                                     style: GoogleFonts.roboto(
//                                         fontSize: 18,
//                                         color: Colors.white,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           const SizedBox(
//                             width: 7,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 10, bottom: 10),
//                 child: Container(
//                   width: MediaQuery.of(context).size.width,
//                   color: Colors.grey[400],
//                   height: 1,
//                 ),
//               ),
//               ListTile(
//                 leading: Image.asset("assets/trop.PNG", scale: 1),
//                 trailing: Icon(
//                   Icons.arrow_forward_ios_rounded,
//                   color: Colors.grey[800],
//                 ),
//                 title: Text(
//                   "Start a new group",
//                   style: GoogleFonts.roboto(),
//                 ),
//                 subtitle: Text(
//                   "Organize your own events",
//                   style: GoogleFonts.roboto(color: Colors.grey[600]),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 10, bottom: 10),
//                 child: Container(
//                   width: MediaQuery.of(context).size.width,
//                   color: Colors.grey[400],
//                   height: 8,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
