import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_auth/responsive.dart';
import '../../components/background.dart';
import 'components/sign_up_top_image.dart';
import 'components/dashmain.dart';
import 'listloundry.dart';
import 'third.dart';
import 'second.dart';
import 'forth.dart';






class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

@override
  Widget build(BuildContext context) {
    return Scaffold(
          
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 200,
                    width: double.infinity,
                   
			
		   child: ListView.builder(
              shrinkWrap: true,
			 
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) => Card(
						 
                    child: Image.asset('assets/images/cnt.jpg'),
                  ),
            )
                  ),
				  
				   Container(
                    height: 60,
                    width: double.infinity,
					child:Padding(
                padding:EdgeInsets.only(left:30),
                    child:Text("Speciality services",
					
					style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
					
					),
)
                  ),
				  
				  
				  
				  
				  
                  Container(
                    height: 200,
                    width: double.infinity,
                    
					
					 child: Card(
		   color: Colors.blue[100],
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Image.asset('assets/images/ln.jpg'),
              title: const Text('Special Services'),
              subtitle: const Text('This is a simple card in Flutter.'),
            ),
          ],
        ),
      )
                  ),
				  
				  Container(
                    height: 60,
                    width: double.infinity,
					child:Padding(
                padding:EdgeInsets.only(left:30),
                    child:Text("Signup or Login",
					
					style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
					
					),
)
                  ),
                  Container(
                    height: 200,
                    width: double.infinity,
                   
					
					
					
					  child: Card(
		   color: Colors.blue[100],
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Image.asset('assets/images/ln.jpg'),
              title: const Text('Special Services'),
              subtitle: const Text('This is a simple card in Flutter.'),
            ),
          ],
        ),
      )
                  ),
				  
				  Container(
                    height: 60,
                    width: double.infinity,
					
					child:Padding(
                padding:EdgeInsets.only(left:30),
                    child:Text("Top 7 Laundary shops in Belgium",
					
					style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
					
					),
)
                  ),
                  Container(
                    height: 200,
                    width: double.infinity,
                   
					
					
					    child: Card(
		   color: Colors.blue[100],
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Image.asset('assets/images/ln.jpg'),
              title: const Text('Laundary Services'),
              subtitle: const Text('This is a simple card in Flutter.'),
            ),
          ],
        ),
      )
                  ),
				  
				  Container(
                    height: 60,
                    width: double.infinity,
					child:Padding(
                padding:EdgeInsets.only(left:30),
                    child:Text("Car Wash Stations near you",
					
					style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
					
					),
)
                  ),
                  Container(
                    height: 200,
                    width: double.infinity,
                   
					
					
					   child: Card(
		   color: Colors.blue[100],
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Image.asset('assets/images/cnt.jpg'),
              title: const Text('Home Services'),
              subtitle: const Text('This is a simple card in Flutter.'),
            ),
          ],
        ),
      )
                  ),
                  Container(
                    height: 200,
                    width: double.infinity,
                    
					
					
					
					   child: Card(
		   color: Colors.blue[100],
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Image.asset('assets/images/cnt.jpg'),
              title: const Text('Login/Signup'),
              subtitle: const Text('Login Here to Tap Servcies'),
            ),
          ],
        ),
      )
                  )
                ],
              ),
            ),
          ));
  }
  }
