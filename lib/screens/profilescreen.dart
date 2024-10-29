// import 'package:flutter/material.dart';

// class ProfileWidget extends StatefulWidget {
//   @override
//   _ProfileWidgetState createState() => _ProfileWidgetState();
// }

// class _ProfileWidgetState extends State<ProfileWidget> {
//   @override
//   Widget build(BuildContext context) {
//     // Figma Flutter Generator ProfileWidget - FRAME

//     return Container(
//       width: 393,
//       height: 852,
//       decoration: BoxDecoration(
//         color: Color.fromRGBO(254, 254, 254, 1),
//       ),
//       child: Stack(
//         children: <Widget>[
//           Positioned(
//             top: 64,
//             left: 83,
//             child: Container(
//               decoration: BoxDecoration(),
//               padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: <Widget>[
//                   Text(
//                     'Profile',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       color: Color.fromRGBO(0, 0, 43, 1), // Ganti undefined dengan warna yang sesuai
//                       fontFamily: 'SF Pro Rounded',
//                       fontSize: 20,
//                       letterSpacing: 0,
//                       fontWeight: FontWeight.normal,
//                       height: 1,
//                     ),
//                   ),
//                   SizedBox(height: 21),
//                   Container(
//                     width: 96,
//                     height: 96,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(100),
//                       border: Border.all(
//                         color: Color.fromRGBO(73, 73, 141, 1),
//                         width: 4,
//                       ),
//                       image: DecorationImage(
//                         image: AssetImage('assets/images/profie.png'),
//                         fit: BoxFit.fitWidth,
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 21),
//                   Text(
//                     'Viera Vaziera',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       color: Color.fromRGBO(0, 0, 43, 1),
//                       fontFamily: 'SF Pro Rounded',
//                       fontSize: 18,
//                       letterSpacing: 0,
//                       fontWeight: FontWeight.normal,
//                       height: 1,
//                     ),
//                   ),
//                   SizedBox(height: 21),
//                   Text(
//                     '@vieravaz',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       color: Color.fromRGBO(73, 73, 141, 1),
//                       fontFamily: 'SF Pro Rounded',
//                       fontSize: 16,
//                       letterSpacing: 0,
//                       fontWeight: FontWeight.normal,
//                       height: 1,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Positioned(
//             top: 342,
//             left: 0,
//             child: Container(
//               decoration: BoxDecoration(),
//               padding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: <Widget>[
//                   Text(
//                     'Account settings',
//                     textAlign: TextAlign.left,
//                     style: TextStyle(
//                       color: Color.fromRGBO(0, 0, 43, 1),
//                       fontFamily: 'SF Pro Rounded',
//                       fontSize: 20,
//                       letterSpacing: 0,
//                       fontWeight: FontWeight.normal,
//                       height: 1,
//                     ),
//                   ),
//                   SizedBox(height: 16),
//                   Container(
//                     padding: EdgeInsets.symmetric(horizontal: 0, vertical: 8),
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       children: <Widget>[
//                         GestureDetector(
//                           onTap: () {
//                             // Implement Edit Profile action here
//                           },
//                           child: Container(
//                             padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
//                             child: Row(
//                               mainAxisSize: MainAxisSize.min,
//                               children: <Widget>[
//                                 SizedBox(width: 24),
//                                 Text(
//                                   'Edit profile',
//                                   textAlign: TextAlign.left,
//                                   style: TextStyle(
//                                     color: Color.fromRGBO(0, 0, 43, 1),
//                                     fontFamily: 'SF Pro Rounded',
//                                     fontSize: 16,
//                                     letterSpacing: 0,
//                                     fontWeight: FontWeight.normal,
//                                     height: 1,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         SizedBox(height: 16),
//                         GestureDetector(
//                           onTap: () {
//                             // Implement Change Password action here
//                           },
//                           child: Container(
//                             padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
//                             child: Row(
//                               mainAxisSize: MainAxisSize.min,
//                               children: <Widget>[
//                                 SizedBox(width: 24),
//                                 Text(
//                                   'Change password',
//                                   textAlign: TextAlign.left,
//                                   style: TextStyle(
//                                     color: Color.fromRGBO(0, 0, 43, 1),
//                                     fontFamily: 'SF Pro Rounded',
//                                     fontSize: 16,
//                                     letterSpacing: 0,
//                                     fontWeight: FontWeight.normal,
//                                     height: 1,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         SizedBox(height: 16),
//                         GestureDetector(
//                           onTap: () {
//                             // Implement Log Out action here
//                           },
//                           child: Container(
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(12),
//                               color: Color.fromRGBO(254, 254, 254, 1),
//                             ),
//                             padding: EdgeInsets.symmetric(horizontal: 0, vertical: 8),
//                             child: Row(
//                               mainAxisSize: MainAxisSize.min,
//                               children: <Widget>[
//                                 Text(
//                                   'Log out',
//                                   textAlign: TextAlign.center,
//                                   style: TextStyle(
//                                     color: Color.fromRGBO(73, 73, 141, 1),
//                                     fontFamily: 'SF Pro Rounded',
//                                     fontSize: 16,
//                                     letterSpacing: 0,
//                                     fontWeight: FontWeight.normal,
//                                     height: 1,
//                                   ),
//                                 ),
//                                 SizedBox(width: 24),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Positioned(
//             top: 751,
//             left: 0,
//             child: Container(
//               decoration: BoxDecoration(
//                 color: Color.fromRGBO(254, 254, 254, 1),
//               ),
//               padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
//               child: Row(
//                 mainAxisSize: MainAxisSize.min,
//                 children: <Widget>[
//                   Column(
//                     mainAxisSize: MainAxisSize.min,
//                     children: <Widget>[
//                       SizedBox(height: 4),
//                       Text(
//                         'Home',
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           color: Color.fromRGBO(162, 162, 208, 1),
//                           fontFamily: 'SF Pro Rounded',
//                           fontSize: 12,
//                           letterSpacing: 0,
//                           fontWeight: FontWeight.normal,
//                           height: 1,
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(width: 39),
//                   Column(
//                     mainAxisSize: MainAxisSize.min,
//                     children: <Widget>[
//                       SizedBox(height: 4),
//                       Text(
//                         'Recommend',
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           color: Color.fromRGBO(162, 162, 208, 1),
//                           fontFamily: 'SF Pro Rounded',
//                           fontSize: 12,
//                           letterSpacing: 0,
//                           fontWeight: FontWeight.normal,
//                           height: 1,
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(width: 39),
//                   Column(
//                     mainAxisSize: MainAxisSize.min,
//                     children: <Widget>[
//                       SizedBox(height: 4),
//                       Text(
//                         'Add',
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           color: Color.fromRGBO(162, 162, 208, 1),
//                           fontFamily: 'SF Pro Rounded',
//                           fontSize: 12,
//                           letterSpacing: 0,
//                           fontWeight: FontWeight.normal,
//                           height: 1,
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(width: 39),
//                   Column(
//                     mainAxisSize: MainAxisSize.min,
//                     children: <Widget>[
//                       SizedBox(height: 4),
//                       Text(
//                         'Cupboard',
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           color: Color.fromRGBO(162, 162, 208, 1),
//                           fontFamily: 'SF Pro Rounded',
//                           fontSize: 12,
//                           letterSpacing: 0,
//                           fontWeight: FontWeight.normal,
//                           height: 1,
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(width: 39),
//                   Column(
//                     mainAxisSize: MainAxisSize.min,
//                     children: <Widget>[
//                       SizedBox(height: 4),
//                       Text(
//                         'Profile',
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           color: Color.fromRGBO(0, 0, 43, 1), // Ganti undefined dengan warna yang sesuai
//                           fontFamily: 'SF Pro Rounded',
//                           fontSize: 12,
//                           letterSpacing: 0,
//                           fontWeight: FontWeight.normal,
//                           height: 1,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
