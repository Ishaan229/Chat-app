import 'package:flutter/material.dart';
import 'package:swipe/main.dart';
import 'package:swipe/screens/home_screen.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {

  bool _isAnimate = false;
  @override
  void initState(){
	super.initState();
	Future.delayed(const Duration(milliseconds: 500), (){
		setState(() {
		  _isAnimate = true;
		});
	});
  }

  @override
  Widget build(BuildContext context) {
    // mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Welcome to Swipe'),
      ),
	  body: Stack(children: [
		AnimatedPositioned(
			top: _isAnimate ? mq.height * .15 : -mq.height * .5,
            right: mq.width * .25,
            width: mq.width * .5,
            duration: const Duration(milliseconds: 1000),
            child: AnimatedOpacity(
              opacity: _isAnimate ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 1000),
              child: AnimatedScale(
                scale: _isAnimate ? 1.0 : 0.5,
                duration: const Duration(milliseconds: 1000),
                child: Image.asset('images/jar.png'),
			          ),
             ),
            ),
				
		Positioned(
		bottom: mq.height * .15,
		left: mq.width * .22,
		// width: mq.width * .6,
		height: mq.height * .08,
		child: ElevatedButton.icon(
			style: ElevatedButton.styleFrom(
				backgroundColor: Color.fromARGB(255, 5, 0, 157),
				shape: const StadiumBorder(),
				elevation: 1,
			),
			onPressed: (){
        Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => const homeScreen()));
}, 
			icon: Image.asset('images/google.png',height: mq.height * .05,), 
			label: RichText(text: const TextSpan(
				style: TextStyle(
					color: Color.fromARGB(255, 206, 219, 255),
					fontSize: 18,
				),
				children: [
				TextSpan(text: 'Sign in with '),
				TextSpan(text: 'Google', style: TextStyle(fontWeight: FontWeight.w500	)),
			]),)))
	  ],),
    );
    
  }
}