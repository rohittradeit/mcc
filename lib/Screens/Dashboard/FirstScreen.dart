import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Dashboard/FirstScreen%20-%20Copy.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_auth/responsive.dart';
import '../../components/background.dart';
import 'components/sign_up_top_image.dart';
import 'components/dashmain.dart';
import 'listloundry.dart';
import 'third.dart';
import 'second.dart';
import 'fifth.dart';
import 'sixth.dart';
import 'forth.dart';
import 'Book1.dart';


	 
  List a = [
    "https://image.freepik.com/free-photo/great-concept-cleaning-various-products-used-cleaning-gray-background_295969-782.jpg",
"https://www.easyhomemadelife.com/wp-content/uploads/2022/08/All-purpose-cleaner-without-vinegar-1200x630-1.jpg",

"https://thumbs.dreamstime.com/z/man-gloves-cleaning-grey-wall-man-gloves-cleaning-grey-wall-sponge-123607340.jpg",
 "https://c4.wallpaperflare.com/wallpaper/364/613/120/action-auto-automobile-automotive-wallpaper-preview.jpg",

"https://marketingplatform.vivial.net/sites/default/files/inline_images/house-cleaning.jpg",


    
    
  ];
List myscreen=[
  Third(),
  Second(),
  Fifth(),
  Sixth(),
  ListLoundry()


];
List service=[

			"Home Services",
			"Laundary Services",
			"Office Cealing",
			"Car washing",
			"Car stations",
			


     ]; 

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

@override
  Widget build(BuildContext context) {



    return Scaffold(
        backgroundColor: Colors.lightBlue.shade50,
          body: Center(


            child: SingleChildScrollView(


              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                Container(
                width: double.infinity,
                height: 100,


                child: Column(

                  children: [
                    Row(
                      children: [

                        DropdownButton<String>(
                          hint: const Text('Select Location'),
                          iconSize: 50,
                          items: <String>['Belgium', 'Belgium', 'Belgium', 'Belgium'].map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (_) {},
                        ),

                        SizedBox(
                          width: 50,
                        ),

                        Spacer(),
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/user.jpeg"),
                        radius: 25,
                      )
                      ],
                    ),



                  ],
                ),
              ),
                  Container(
                      height: 80,
                      width: double.infinity,
                      child:Padding(
                        padding:EdgeInsets.only(left:10),
                        child:Text("Hello,\nWhich service would you like ?",

                          style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),

                        ),
                      )
                  ),


                  Container(
                    height: 140,
                    width: double.infinity,
                   
			
		   child: ListView.builder(
              shrinkWrap: true,
			 
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) =>   SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 170,

                child: GestureDetector(

                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) =>  myscreen[index]));
                  },
                  child: Card(
                  semanticContainer: true,


                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 10,
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1.0,),
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: NetworkImage(a[index]),

                        fit: BoxFit.fitWidth,
                      ),
                    ),





                   // child: Text(service[index], style: TextStyle(fontWeight: FontWeight.w900,fontSize:18),),


                    child: Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [

                      Text(service[index], style: TextStyle(fontSize: 24,color:Colors.white)),

                        SizedBox(height: 12),

                          ],
                        ),



                      ],
                    ),

                  ),



                ),

                ),

              ),

            )
                  ),

                  SizedBox(height: 30),
                  Container(
                      height: 40,
                      width: double.infinity,
                      child:Padding(
                        padding:EdgeInsets.only(left:10),
                        child:Text("Speciality services",

                          style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),

                        ),
                      )
                  ),





                Container(
                  height: 260,
                  width: double.infinity,


                  child: Card(
                    margin: const EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    elevation: 5,
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/cnt.jpg"),
                          fit: BoxFit.cover,
                          alignment: Alignment.topCenter,
                        ),
                      ),
                      child:Column( children: [

                        Row(
                          children: [


                            Text("Home & Office cleaning",

                              style: TextStyle(fontSize: 22,fontWeight: FontWeight.lerp(FontWeight.w300, FontWeight.w400, 0.5)),

                            ),




                          ],
                        ),

                        SizedBox(height: 130),


                        Row(
                          children: [

                            TextButton(
                                child: Text(
                                    "Book now".toUpperCase(),
                                    style: TextStyle(fontSize: 14)
                                ),
                                style: ButtonStyle(
                                    padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                                    foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
                                    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(18.0),
                                            side: BorderSide(color: Colors.red)
                                        )
                                    )
                                ),
                                onPressed: () => {
                                  showDialog(context: context, builder: (context)=>AlertDialog(
                                    title:Text("Login /Signup to avail services"),
                                    content:ElevatedButton(
                                      onPressed: () {

                                        Navigator.of(context)
                                            .push(MaterialPageRoute(builder: (context) =>   HomePage()  )


                                         );



                                      },
                                      child: Text('Book '),
                                    ),



                                  ),)


                                }
                            ),


                          ],
                        ),



                      ]),


                    ),
                  ),


                ),

				  Container(
                    height: 40,
                    width: double.infinity,
					child:Padding(
                padding:EdgeInsets.only(left:10),
                    child:Text("Signup or Login",
					
					style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
					
					),
)
                  ),
                  Container(
                    height: 250,
                    width: double.infinity,

					
					
					
					  child: Card(
              margin: const EdgeInsets.all(10),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              elevation: 5,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/lg.jpg"),
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                ),
                child:Column( children: [
                  Row(
                    children: [


                      Text("Enjoy faster booking",

                        style: TextStyle(fontSize: 22),

                      ),




                    ],
                  ),

                  SizedBox(height: 130),


                  Row(
                    children: [

                      TextButton(
                          child: Text(
                              "Login/signup".toUpperCase(),
                              style: TextStyle(fontSize: 14)
                          ),
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.red)
                                  )
                              )
                          ),
                          onPressed: () => {

                            showDialog(context: context, builder: (context)=>AlertDialog(
                              title:Text("Login /Signup to avail services"),
                              content:Text(" Click  Here  for  More  information\n Please  signup  first and  login  with  email and password"),



                            ),)


                          }
                      ),


                    ],
                  ),



                ]),


              ),
            ),


                  





                  ),
				  

                  Container(
                    height: 240,
                    width: double.infinity,
                  

					    child: Card(
                margin: const EdgeInsets.all(10),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                elevation: 5,
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/crw.jpg"),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  child:Column( children: [
                    Row(
                      children: [


                        Text("Customers top pick of the week!",

                          style: TextStyle(fontSize: 22),

                        ),




                      ],
                    ),

                    SizedBox(height: 130),


                    Row(
                      children: [

                        TextButton(
                            child: Text(
                                "Book now".toUpperCase(),
                                style: TextStyle(fontSize: 14)
                            ),
                            style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                                foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(18.0),
                                        side: BorderSide(color: Colors.red)
                                    )
                                )
                            ),
                            onPressed: () => {
            showDialog(context: context, builder: (context)=>AlertDialog(
              title:Text("Login /Signup to avail services"),
              content:Text(" Click  Here  for  More  information\n Please  signup  first and  login  with  email and password"),



            ),)


                            }
                        ),


                      ],
                    ),



                  ]),


                ),
              ),
	
	
                  ),

				  Container(
                    height: 40,
                    width: double.infinity,
					child:Padding(
                padding:EdgeInsets.only(left:10),
                    child:Text("Car Wash Stations near you",
					
					style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
					
					),
)
                  ),

                  Container(
                    height: 200,
                    width: double.infinity,
                   
					
					
					   child: Card(
               semanticContainer: true,
               clipBehavior: Clip.antiAliasWithSaveLayer,
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(10.0),
               ),
               elevation: 10,
               margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
               child: Container(
                 padding: const EdgeInsets.all(10.0),
                 decoration: BoxDecoration(
                   border: Border.all(color: Colors.black, width: 1.0,),
                   borderRadius: BorderRadius.circular(10),
                   image: DecorationImage(
                     image: AssetImage('assets/images/map.jpg'),
                     fit: BoxFit.fitWidth,
                   ),
                 ),
                 child: Text("Home Cleaning Services", style: TextStyle(fontWeight: FontWeight.w900),),
               ),
             ),
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
