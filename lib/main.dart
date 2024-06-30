import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:swipe/screens/auth/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:swipe/screens/splash_screen.dart';
import 'firebase_options.dart';


// global object for accessing device size
late Size mq;


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp,DeviceOrientation.portraitDown]).then((value) {
  _initializeFirebase();
  runApp(const MyApp());
  }
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'swipe',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
		      centerTitle: true,
          elevation: 3.0,
          shadowColor: Colors.black,
          iconTheme: IconThemeData(
            
          ),
          titleTextStyle: TextStyle
          (color: Color.fromARGB(255, 206, 219, 255),
		  			fontWeight: FontWeight.bold,
					  fontSize: 22,
        
					),backgroundColor: Color.fromARGB(255, 5, 0, 157),),
      ),
      home:splashScreen(),
    );
  }
}

_initializeFirebase() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
}