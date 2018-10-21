import 'package:flutter/material.dart';

// class GradientAppBar extends StatelessWidget {
//   final String title;
//   GradientAppBar(this.title);

//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new PreferredSize(
//         child: new Container(
//           padding: new EdgeInsets.only(top: MediaQuery.of(context).padding.top),
//           child: new Padding(
//             padding: const EdgeInsets.only(left: 30.0, top: 20.0, bottom: 20.0),
//             child: new Text(
//               title,
//               style: const TextStyle(
//                   color: const Color(0xffffffff),
//                   fontWeight: FontWeight.w700,
//                   fontFamily: "ArialRoundedMT",
//                   fontStyle: FontStyle.normal,
//                   fontSize: 17.0),
//             ),
//           ),
//           decoration: new BoxDecoration(
//             gradient: new LinearGradient(
//               begin: const Alignment(0.0, -1.0),
//               end: const Alignment(0.0, 0.6),
//               colors: <Color>[
//                 const Color.fromRGBO(255, 78, 97, 1.0),
//                 const Color.fromRGBO(255, 8, 19, 0.98),
//               ],
//             ),
//           ),
//         ),
//         preferredSize: new Size(MediaQuery.of(context).size.width, 150.0),
//       ),
//     );
//   }
// }
class GradientAppBar extends StatelessWidget {

  final String title;
  final double barHeight = 40.0;

  GradientAppBar(this.title);

  @override
  Widget build(BuildContext context) {
    final double statusbarHeight = MediaQuery
        .of(context)
        .padding
        .top;

    return new Container(
      padding: new EdgeInsets.only(top: statusbarHeight),
      height: statusbarHeight + barHeight,
      child: new Center(
        child: new Text(
          title,
          style: const TextStyle(
                  color: const Color(0xffffffff),
                  fontWeight: FontWeight.w700,
                  fontFamily: "ArialRoundedMT",
                  fontStyle: FontStyle.normal,
                  fontSize: 17.0),
             ),
      ),
      decoration: new BoxDecoration(
            gradient: new LinearGradient(
              begin: const Alignment(0.0, 0.0),
              end: const Alignment(0.0, 1.0),
              colors: <Color>[
                const Color.fromRGBO(255, 78, 97, 1.0),
                const Color.fromRGBO(255, 8, 19, 0.98),
              ],
            ),
          ),
    );
  }
}