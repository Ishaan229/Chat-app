import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:swipe/Screens/auth/login_screen.dart';
// import 'package:swipe/Screens/home_screen.dart';
// import 'package:swipe/Screens/home_screen.dart';
import 'package:swipe/main.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
 
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 2500), () {

      //exit full screen
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
      SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

        //navigate to home screen
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const loginScreen()));
      });
  }

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   title: const Text('Welcome to Swipe'),
      // ),
      body: Stack(
        children: [
          Positioned(
            top: mq.height * .35,
            right: mq.width * .25,
            width: mq.width * .5,
                child: Image.asset('images/jar.png'),
              ),
          Positioned(
              bottom: mq.height * .15,
              width: mq.width,
              child: const Text('Made with ❤️ by ishhhh',
              textAlign: TextAlign.center)
          )
        ],
      ),
    );
  }
}
