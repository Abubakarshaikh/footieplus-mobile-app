import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:footieplus/view/homeScreen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: AnimatedSplashScreen(
        backgroundColor: Colors.black,
        splash: 'assets/splash/logo.png',
        animationDuration: Duration(seconds: 2),
        splashTransition: SplashTransition.slideTransition,
        pageTransitionType: PageTransitionType.leftToRight,
        splashIconSize: 160,
        curve: Curves.easeInOutQuart,
        nextScreen: HomeScreen(),
      ),
      // home: SplashScreen(),
    );
  }
}

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({Key? key}) : super(key: key);

//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     _controller = AnimationController(
//       duration: Duration(seconds: 2),
//       upperBound: 100,
//       vsync: this,
//     );
//     _controller.forward();
//     _controller.addListener(() {
//       setState(() {});
//       if (_controller.value.toInt() == 100) {
//         navigate();
//       }
//     });
//   }

//   navigate() {
//     Navigator.push(context, MaterialPageRoute(builder: (context) {
//       return HomeScreen();
//     }));
//   }

//   @override
//   Widget build(BuildContext context) {
//     // double height = MediaQuery.of(context).size.height; // 752.0
//     // double width = MediaQuery.of(context).size.height; // 360.0

//     return Scaffold(
//       backgroundColor: Color(0xffFFFF00),
//       body: Stack(
//         alignment: Alignment.center,
//         children: [
//           Positioned(
//             bottom: 380,
//             left: _controller.value,
//             child: Image(
//               height: 85,
//               width: 85,
//               image: AssetImage('assets/splash/2.jpeg'),
//             ),
//           ),
//           Positioned(
//             bottom: 380,
//             right: _controller.value,
//             child: Image(
//               height: 80,
//               width: 80,
//               image: AssetImage('assets/splash/1.jpeg'),
//             ),
//           ),
//           Positioned(
//             bottom: 190 + _controller.value,
//             child: Image(
//               height: 100,
//               width: 280,
//               image: AssetImage('assets/splash/3.jpeg'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
