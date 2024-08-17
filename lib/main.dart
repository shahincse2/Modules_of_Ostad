import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Container',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF073042),
      ),
      // body: Container(
      //   padding: EdgeInsets.only(
      //     top: 10,
      //     left: 10,
      //     right: 10,
      //   ),
      //   child: SingleChildScrollView(
      //     child: Column(
      //       children: [
      //         Column(
      //           mainAxisAlignment: MainAxisAlignment.start,
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.start,
      //               children: [
      //                 Container(
      //                   height: 150,
      //                   width: 150,
      //                   child: Text(
      //                     'M Bappe',
      //                     style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
      //                   ),
      //                   padding: EdgeInsets.only(
      //                     left: 75,
      //                     top: 120,
      //                   ),
      //                   decoration: BoxDecoration(
      //                     color: Colors.blueGrey,
      //                     //border: Border.lerp(Border(top: BorderSide(color: Colors.red)), Border(left: BorderSide(color: Colors.black)), 0),
      //                       border: Border.all(color: Colors.white, width: 2,),
      //                       borderRadius: BorderRadius.only(
      //                       topLeft: Radius.circular(150),
      //                     ),
      //                     image: DecorationImage(
      //                       image: NetworkImage("https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcRklniuwbm762x3XN4uhK8OGBBFHhH33-uVURcpVlG9UFgl-kITk5uH2B-d1efSkKHwxLyenwKRx4qaQIw"),
      //                       fit: BoxFit.cover,
      //                     ),
      //                   ),
      //                 ),
      //                 Container(
      //                   height: 150,
      //                   width: 150,
      //                   child: Text(
      //                     'M Bappe',
      //                     style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
      //                   ),
      //                   padding: EdgeInsets.only(
      //                     left: 5,
      //                     top: 120,
      //                   ),
      //                   decoration: BoxDecoration(
      //                       color: Colors.blueGrey,
      //                       border: Border.all(color: Colors.white, width: 2,),
      //                       borderRadius: BorderRadius.only(
      //                         //bottomLeft: Radius.circular(50),
      //                         topRight: Radius.circular(150),
      //                       ),
      //                     image: DecorationImage(
      //                       image: NetworkImage("https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcRklniuwbm762x3XN4uhK8OGBBFHhH33-uVURcpVlG9UFgl-kITk5uH2B-d1efSkKHwxLyenwKRx4qaQIw"),
      //                       fit: BoxFit.cover,
      //                     ),
      //                   ),
      //                 ),
      //               ],
      //             ),
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.start,
      //               children: [
      //                 Container(
      //                   height: 150,
      //                   width: 150,
      //                   child: Text(
      //                     'M Bappe',
      //                     style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
      //                   ),
      //                   padding: EdgeInsets.only(
      //                     left: 75,
      //                     top: 100,
      //                   ),
      //                   decoration: BoxDecoration(
      //                       color: Colors.blueGrey,
      //                       border: Border.all(color: Colors.white, width: 2,),
      //                       borderRadius: BorderRadius.only(
      //                         bottomLeft: Radius.circular(150),
      //                         //topRight: Radius.circular(150),
      //                       ),
      //                     image: DecorationImage(
      //                       image: NetworkImage("https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcRklniuwbm762x3XN4uhK8OGBBFHhH33-uVURcpVlG9UFgl-kITk5uH2B-d1efSkKHwxLyenwKRx4qaQIw"),
      //                       fit: BoxFit.cover,
      //                     ),
      //                   ),
      //                 ),
      //                 Container(
      //                   height: 150,
      //                   width: 150,
      //                   child: Text(
      //                     'M Bappe',
      //                     style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
      //                   ),
      //                     padding: EdgeInsets.only(
      //                       top: 100,
      //                       left: 5,
      //                     ),
      //                   decoration: BoxDecoration(
      //                       color: Colors.blueGrey,
      //                       border: Border.all(color: Colors.white, width: 2,),
      //                       borderRadius: BorderRadius.only(
      //                         //bottomLeft: Radius.circular(50),
      //                         bottomRight: Radius.circular(150),
      //                       ),
      //                     image: DecorationImage(
      //                       image: NetworkImage("https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcRklniuwbm762x3XN4uhK8OGBBFHhH33-uVURcpVlG9UFgl-kITk5uH2B-d1efSkKHwxLyenwKRx4qaQIw"),
      //                       fit: BoxFit.cover,
      //                     ),
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ],
      //         ),
      //         Column(
      //           mainAxisAlignment: MainAxisAlignment.start,
      //           crossAxisAlignment: CrossAxisAlignment.end,
      //           children: [
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.end,
      //               children: [
      //                 Container(
      //                   height: 150,
      //                   width: 150,
      //                   child: Text(
      //                     'M Bappe',
      //                     style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
      //                   ),
      //                   padding: EdgeInsets.only(
      //                     left: 75,
      //                     top: 120,
      //                   ),
      //                   decoration: BoxDecoration(
      //                     color: Colors.blueGrey,
      //                     //border: Border.lerp(Border(top: BorderSide(color: Colors.red)), Border(left: BorderSide(color: Colors.black)), 0),
      //                       border: Border.all(color: Colors.white, width: 2,),
      //                       borderRadius: BorderRadius.only(
      //                       topLeft: Radius.circular(150),
      //                     ),
      //                     image: DecorationImage(
      //                       image: NetworkImage("https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcRklniuwbm762x3XN4uhK8OGBBFHhH33-uVURcpVlG9UFgl-kITk5uH2B-d1efSkKHwxLyenwKRx4qaQIw"),
      //                       fit: BoxFit.cover,
      //                     ),
      //                   ),
      //                 ),
      //                 Container(
      //                   height: 150,
      //                   width: 150,
      //                   child: Text(
      //                     'M Bappe',
      //                     style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
      //                   ),
      //                   padding: EdgeInsets.only(
      //                     left: 5,
      //                     top: 120,
      //                   ),
      //                   decoration: BoxDecoration(
      //                       color: Colors.blueGrey,
      //                       border: Border.all(color: Colors.white, width: 2,),
      //                       borderRadius: BorderRadius.only(
      //                         //bottomLeft: Radius.circular(50),
      //                         topRight: Radius.circular(150),
      //                       ),
      //                     image: DecorationImage(
      //                       image: NetworkImage("https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcRklniuwbm762x3XN4uhK8OGBBFHhH33-uVURcpVlG9UFgl-kITk5uH2B-d1efSkKHwxLyenwKRx4qaQIw"),
      //                       fit: BoxFit.cover,
      //                     ),
      //                   ),
      //                 ),
      //               ],
      //             ),
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.end,
      //               children: [
      //                 Container(
      //                   height: 150,
      //                   width: 150,
      //                   child: Text(
      //                     'M Bappe',
      //                     style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
      //                   ),
      //                   padding: EdgeInsets.only(
      //                     left: 75,
      //                     top: 100,
      //                   ),
      //                   decoration: BoxDecoration(
      //                       color: Colors.blueGrey,
      //                       border: Border.all(color: Colors.white, width: 2,),
      //                       borderRadius: BorderRadius.only(
      //                         bottomLeft: Radius.circular(150),
      //                         //topRight: Radius.circular(150),
      //                       ),
      //                     image: DecorationImage(
      //                       image: NetworkImage("https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcRklniuwbm762x3XN4uhK8OGBBFHhH33-uVURcpVlG9UFgl-kITk5uH2B-d1efSkKHwxLyenwKRx4qaQIw"),
      //                       fit: BoxFit.cover,
      //                     ),
      //                   ),
      //                 ),
      //                 Container(
      //                   height: 150,
      //                   width: 150,
      //                   child: Text(
      //                     'M Bappe',
      //                     style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
      //                   ),
      //                     padding: EdgeInsets.only(
      //                       top: 100,
      //                       left: 5,
      //                     ),
      //                   decoration: BoxDecoration(
      //                       color: Colors.blueGrey,
      //                       border: Border.all(color: Colors.white, width: 2,),
      //                       borderRadius: BorderRadius.only(
      //                         //bottomLeft: Radius.circular(50),
      //                         bottomRight: Radius.circular(150),
      //                       ),
      //                     image: DecorationImage(
      //                       image: NetworkImage("https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcRklniuwbm762x3XN4uhK8OGBBFHhH33-uVURcpVlG9UFgl-kITk5uH2B-d1efSkKHwxLyenwKRx4qaQIw"),
      //                       fit: BoxFit.cover,
      //                     ),
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ],
      //         ),
      //         Column(
      //           mainAxisAlignment: MainAxisAlignment.start,
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.start,
      //               children: [
      //                 Container(
      //                   height: 150,
      //                   width: 150,
      //                   child: Text(
      //                     'M Bappe',
      //                     style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
      //                   ),
      //                   padding: EdgeInsets.only(
      //                     left: 75,
      //                     top: 120,
      //                   ),
      //                   decoration: BoxDecoration(
      //                     color: Colors.blueGrey,
      //                     //border: Border.lerp(Border(top: BorderSide(color: Colors.red)), Border(left: BorderSide(color: Colors.black)), 0),
      //                     border: Border.all(color: Colors.white, width: 2,),
      //                     borderRadius: BorderRadius.only(
      //                       topLeft: Radius.circular(150),
      //                     ),
      //                     image: DecorationImage(
      //                       image: NetworkImage("https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcRklniuwbm762x3XN4uhK8OGBBFHhH33-uVURcpVlG9UFgl-kITk5uH2B-d1efSkKHwxLyenwKRx4qaQIw"),
      //                       fit: BoxFit.cover,
      //                     ),
      //                   ),
      //                 ),
      //                 Container(
      //                   height: 150,
      //                   width: 150,
      //                   child: Text(
      //                     'M Bappe',
      //                     style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
      //                   ),
      //                   padding: EdgeInsets.only(
      //                     left: 5,
      //                     top: 120,
      //                   ),
      //                   decoration: BoxDecoration(
      //                     color: Colors.blueGrey,
      //                     border: Border.all(color: Colors.white, width: 2,),
      //                     borderRadius: BorderRadius.only(
      //                       //bottomLeft: Radius.circular(50),
      //                       topRight: Radius.circular(150),
      //                     ),
      //                     image: DecorationImage(
      //                       image: NetworkImage("https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcRklniuwbm762x3XN4uhK8OGBBFHhH33-uVURcpVlG9UFgl-kITk5uH2B-d1efSkKHwxLyenwKRx4qaQIw"),
      //                       fit: BoxFit.cover,
      //                     ),
      //                   ),
      //                 ),
      //               ],
      //             ),
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.start,
      //               children: [
      //                 Container(
      //                   height: 150,
      //                   width: 150,
      //                   child: Text(
      //                     'M Bappe',
      //                     style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
      //                   ),
      //                   padding: EdgeInsets.only(
      //                     left: 75,
      //                     top: 100,
      //                   ),
      //                   decoration: BoxDecoration(
      //                     color: Colors.blueGrey,
      //                     border: Border.all(color: Colors.white, width: 2,),
      //                     borderRadius: BorderRadius.only(
      //                       bottomLeft: Radius.circular(150),
      //                       //topRight: Radius.circular(150),
      //                     ),
      //                     image: DecorationImage(
      //                       image: NetworkImage("https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcRklniuwbm762x3XN4uhK8OGBBFHhH33-uVURcpVlG9UFgl-kITk5uH2B-d1efSkKHwxLyenwKRx4qaQIw"),
      //                       fit: BoxFit.cover,
      //                     ),
      //                   ),
      //                 ),
      //                 Container(
      //                   height: 150,
      //                   width: 150,
      //                   child: Text(
      //                     'M Bappe',
      //                     style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
      //                   ),
      //                   padding: EdgeInsets.only(
      //                     top: 100,
      //                     left: 5,
      //                   ),
      //                   decoration: BoxDecoration(
      //                     color: Colors.blueGrey,
      //                     border: Border.all(color: Colors.white, width: 2,),
      //                     borderRadius: BorderRadius.only(
      //                       //bottomLeft: Radius.circular(50),
      //                       bottomRight: Radius.circular(150),
      //                     ),
      //                     image: DecorationImage(
      //                       image: NetworkImage("https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcRklniuwbm762x3XN4uhK8OGBBFHhH33-uVURcpVlG9UFgl-kITk5uH2B-d1efSkKHwxLyenwKRx4qaQIw"),
      //                       fit: BoxFit.cover,
      //                     ),
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ],
      //         ),
      //         Column(
      //           mainAxisAlignment: MainAxisAlignment.start,
      //           crossAxisAlignment: CrossAxisAlignment.end,
      //           children: [
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.end,
      //               children: [
      //                 Container(
      //                   height: 150,
      //                   width: 150,
      //                   child: Text(
      //                     'M Bappe',
      //                     style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
      //                   ),
      //                   padding: EdgeInsets.only(
      //                     left: 75,
      //                     top: 120,
      //                   ),
      //                   decoration: BoxDecoration(
      //                     color: Colors.blueGrey,
      //                     //border: Border.lerp(Border(top: BorderSide(color: Colors.red)), Border(left: BorderSide(color: Colors.black)), 0),
      //                     border: Border.all(color: Colors.white, width: 2,),
      //                     borderRadius: BorderRadius.only(
      //                       topLeft: Radius.circular(150),
      //                     ),
      //                     image: DecorationImage(
      //                       image: NetworkImage("https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcRklniuwbm762x3XN4uhK8OGBBFHhH33-uVURcpVlG9UFgl-kITk5uH2B-d1efSkKHwxLyenwKRx4qaQIw"),
      //                       fit: BoxFit.cover,
      //                     ),
      //                   ),
      //                 ),
      //                 Container(
      //                   height: 150,
      //                   width: 150,
      //                   child: Text(
      //                     'M Bappe',
      //                     style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
      //                   ),
      //                   padding: EdgeInsets.only(
      //                     left: 5,
      //                     top: 120,
      //                   ),
      //                   decoration: BoxDecoration(
      //                     color: Colors.blueGrey,
      //                     border: Border.all(color: Colors.white, width: 2,),
      //                     borderRadius: BorderRadius.only(
      //                       //bottomLeft: Radius.circular(50),
      //                       topRight: Radius.circular(150),
      //                     ),
      //                     image: DecorationImage(
      //                       image: NetworkImage("https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcRklniuwbm762x3XN4uhK8OGBBFHhH33-uVURcpVlG9UFgl-kITk5uH2B-d1efSkKHwxLyenwKRx4qaQIw"),
      //                       fit: BoxFit.cover,
      //                     ),
      //                   ),
      //                 ),
      //               ],
      //             ),
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.end,
      //               children: [
      //                 Container(
      //                   height: 150,
      //                   width: 150,
      //                   child: Text(
      //                     'M Bappe',
      //                     style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
      //                   ),
      //                   padding: EdgeInsets.only(
      //                     left: 75,
      //                     top: 100,
      //                   ),
      //                   decoration: BoxDecoration(
      //                     color: Colors.blueGrey,
      //                     border: Border.all(color: Colors.white, width: 2,),
      //                     borderRadius: BorderRadius.only(
      //                       bottomLeft: Radius.circular(150),
      //                       //topRight: Radius.circular(150),
      //                     ),
      //                     image: DecorationImage(
      //                       image: NetworkImage("https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcRklniuwbm762x3XN4uhK8OGBBFHhH33-uVURcpVlG9UFgl-kITk5uH2B-d1efSkKHwxLyenwKRx4qaQIw"),
      //                       fit: BoxFit.cover,
      //                     ),
      //                   ),
      //                 ),
      //                 Container(
      //                   height: 150,
      //                   width: 150,
      //                   child: Text(
      //                     'M Bappe',
      //                     style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
      //                   ),
      //                   padding: EdgeInsets.only(
      //                     top: 100,
      //                     left: 5,
      //                   ),
      //                   decoration: BoxDecoration(
      //                     color: Colors.blueGrey,
      //                     border: Border.all(color: Colors.white, width: 2,),
      //                     borderRadius: BorderRadius.only(
      //                       //bottomLeft: Radius.circular(50),
      //                       bottomRight: Radius.circular(150),
      //                     ),
      //                     image: DecorationImage(
      //                       image: NetworkImage("https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcRklniuwbm762x3XN4uhK8OGBBFHhH33-uVURcpVlG9UFgl-kITk5uH2B-d1efSkKHwxLyenwKRx4qaQIw"),
      //                       fit: BoxFit.cover,
      //                     ),
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ],
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       ElevatedButton(
      //         onPressed: () {
      //           showAboutDialog(
      //             context: context,
      //             applicationName: 'Sample',
      //             applicationVersion: '1.0.1',
      //             applicationIcon: Icon(Icons.info),
      //             barrierLabel: 'Barrier Label',
      //             barrierColor: Colors.grey.shade100,
      //           );
      //         },
      //         child: const Text('Dialog'),
      //       ),
      //       ElevatedButton(
      //         onPressed: () {
      //           showAboutDialog(
      //             context: context,
      //             applicationName: 'Sample',
      //             applicationVersion: '1.0.1',
      //             applicationIcon: Icon(Icons.info),
      //             barrierLabel: 'Barrier Label',
      //             barrierColor: Colors.transparent.withBlue(500),
      //           );
      //         },
      //         child: const Text('Dialog'),
      //       ),
      //     ],
      //   ),
      // ),

      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    barrierDismissible: false,
                    barrierColor: Colors.black26,
                    builder: (ctx) {
                      return AlertDialog(
                        title: Text(
                          'Alerts',
                          style: TextStyle(color: Colors.white),
                        ),
                        actions: [
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'Okay',
                                style: TextStyle(color: Colors.white),
                              )),
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                'Cancel',
                                style: TextStyle(color: Colors.white),
                              )),
                        ],
                        backgroundColor: const Color(0xFF073042),
                        icon: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                        content: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Are you sure? If yes then press 'Okay', otherwise 'Cancel'",
                                style: TextStyle(color: Colors.white),
                              ),
                            ]),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          //borderRadius: BorderRadius.zero,
                        ),
                      );
                    });
              },
              child: const Text('Dialog'),
            ),
            const SizedBox(
              height: 500,
            ),
            // ElevatedButton(
            //     onPressed: () {
            //       showModalBottomSheet(
            //           backgroundColor: Colors.white,
            //           useSafeArea: true,
            //           isDismissible: false,
            //           enableDrag: true,
            //           showDragHandle: true,
            //           clipBehavior: Clip.hardEdge,
            //           context: context,
            //           builder: (ctx) {
            //             return const SizedBox(
            //               height: 400,
            //               width: double.infinity,
            //               child: Column(
            //                 children: [
            //                   SizedBox(
            //                     height: 50,
            //                     width: 50,
            //                     child: Icon(
            //                       Icons.exit_to_app,
            //                     ),
            //                   ),
            //                   Padding(padding: EdgeInsets.all(8.0)),
            //                   Text(
            //                     'This is Title',
            //                     style: TextStyle(fontSize: 20),
            //                   ),
            //                   Divider(
            //                     color: Colors.black54,
            //                   ),
            //                   SingleChildScrollView(
            //                     scrollDirection: Axis.horizontal,
            //                     child: Row(
            //                       children: [
            //                         Padding(
            //                           padding: EdgeInsets.all(8.0),
            //                           child: Column(
            //                             mainAxisAlignment:
            //                                 MainAxisAlignment.start,
            //                             crossAxisAlignment:
            //                                 CrossAxisAlignment.start,
            //                             children: [
            //                               Text(
            //                                 'This is data',
            //                                 style: TextStyle(fontSize: 20),
            //                               ),
            //                               Text(
            //                                 'This is line',
            //                                 style: TextStyle(fontSize: 20),
            //                               ),
            //                               Text(
            //                                 'This is bottom sheet',
            //                                 style: TextStyle(fontSize: 20),
            //                               ),
            //                               Text(
            //                                 'This is Navigator.',
            //                                 style: TextStyle(fontSize: 20),
            //                               ),
            //                               Text(
            //                                 'This is Navigator.',
            //                                 style: TextStyle(fontSize: 20),
            //                               ),
            //                               Text(
            //                                 'This is Navigator.',
            //                                 style: TextStyle(fontSize: 20),
            //                               ),
            //                               Text(
            //                                 'This is Navigator.',
            //                                 style: TextStyle(fontSize: 20),
            //                               ),
            //                               Text(
            //                                 'This is Navigator.',
            //                                 style: TextStyle(fontSize: 20),
            //                               ),
            //                               Text(
            //                                 'This is Navigator.',
            //                                 style: TextStyle(fontSize: 20),
            //                               ),
            //
            //                             ],
            //                           ),
            //                         ),
            //                         Padding(
            //                           padding: EdgeInsets.all(8.0),
            //                           child: Column(
            //                             mainAxisAlignment:
            //                                 MainAxisAlignment.start,
            //                             crossAxisAlignment:
            //                                 CrossAxisAlignment.start,
            //                             children: [
            //                               Text(
            //                                 'This is data',
            //                                 style: TextStyle(fontSize: 20),
            //                               ),
            //                               Text(
            //                                 'This is line',
            //                                 style: TextStyle(fontSize: 20),
            //                               ),
            //                               Text(
            //                                 'This is bottom sheet',
            //                                 style: TextStyle(fontSize: 20),
            //                               ),
            //                               Text(
            //                                 'This is Navigator.',
            //                                 style: TextStyle(fontSize: 20),
            //                               ),
            //                               Text(
            //                                 'This is my text.',
            //                                 style: TextStyle(fontSize: 20),
            //                               ),
            //                               Text(
            //                                 'This is user experience...................',
            //                                 style: TextStyle(fontSize: 20),
            //                               ),
            //                               Text(
            //                                 'This is Navigator.',
            //                                 style: TextStyle(fontSize: 20),
            //                               ),
            //                               Text(
            //                                 'This is Navigator.',
            //                                 style: TextStyle(fontSize: 20),
            //                               ),
            //                               Text(
            //                                 'This is Navigator.',
            //                                 style: TextStyle(fontSize: 20),
            //                               ),
            //
            //                             ],
            //                           ),
            //                         ),
            //                       ],
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //             );
            //           });
            //     },
            //     child: const Text('Bottom Sheet'))

            //Practice with Modal bottom sheet
            ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                      backgroundColor: const Color(0xFF073042),
                      showDragHandle: true,
                      context: context,
                      builder: (context) {
                        return SizedBox(
                          height: 195,
                          width: double.infinity,
                          child: Column(
                            children: [
                              Text(
                                'Choose',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                              Divider(
                                color: Colors.white,
                                thickness: 0.1,
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 100, right: 80),
                                        child: Icon(
                                          Icons.share,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        'Share',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      )
                                    ],
                                  ),
                                  Divider(
                                    color: Colors.white,
                                    thickness: 0.1,
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 100, right: 80),
                                        child: Icon(
                                          Icons.copy,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        'Copy Link',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      )
                                    ],
                                  ),
                                  Divider(
                                    color: Colors.white,
                                    thickness: 0.1,
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 100, right: 80),
                                        child: Icon(
                                          Icons.download,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        'Download',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      )
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      });
                },
                child: Text('Bottom Sheet'))
          ],
        ),
      ),
    );
  }
}
