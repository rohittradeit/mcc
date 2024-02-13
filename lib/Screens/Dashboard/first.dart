import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_auth/responsive.dart';
import '../../components/background.dart';
import 'components/sign_up_top_image.dart';
import 'components/dashmain.dart';
import 'FirstScreen.dart';  
import 'SecondScreen.dart';

import 'dash_screen.dart';   
class First extends StatelessWidget {
  const First({Key? key}) : super(key: key);

   @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
	debugShowCheckedModeBanner: false,
      home: DefaultTabController(  
        length: 5,  
        child: Scaffold(  
          appBar: AppBar(  
            title: Text(' Welcome  '), 
           			
            bottom: TabBar(  
              tabs: [  
			    Tab(icon: Icon(Icons.home)),
				Tab(icon: Icon(Icons.email)),
                Tab(icon: Icon(Icons.contacts)),  
                Tab(icon: Icon(Icons.camera_alt)),
				Tab(icon: Icon(Icons.search)), 				
              ],  
            ),
			
          ),  
          body: TabBarView(  
            children: [  
              FirstScreen(),  
              Dashboard(),
			  SecondScreen(),
			  SecondScreen(),
			  SecondScreen(),
			  
            ],  
          ),  
        ),  
      ),  
    );  
  }  
}