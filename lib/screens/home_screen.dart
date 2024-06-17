import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(CupertinoIcons.home,color: Color.fromARGB(255, 206, 219, 255),),
        title: const Text('Swipe'),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.search),color: const Color.fromARGB(255, 206, 219, 255),),
          IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert),color: const Color.fromARGB(255, 206, 219, 255),)
        ],

	    ),
      floatingActionButton: Padding(
		  padding: const EdgeInsets.all(5),
		  child: FloatingActionButton(onPressed: (){},
      backgroundColor: const Color.fromARGB(255, 5, 0, 157),
      foregroundColor: const Color.fromARGB(255, 206, 219, 255),
      child: const Icon(Icons.add_comment),
      ),
    ),
    );
    
  }
}