import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_auth/responsive.dart';
import '../../components/background.dart';

import 'package:carousel_slider/carousel_slider.dart'; 

class Forth extends StatelessWidget {
  const Forth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.white,
      ),
     body: ListView( 
		children: [ 
		CarouselSlider( 
			items: [ 
				
				//1st Image of Slider 
				Container( 
				margin: EdgeInsets.all(6.0), 
				decoration: BoxDecoration( 
					borderRadius: BorderRadius.circular(8.0), 
					image: DecorationImage( 
					image: NetworkImage("https://images.wallpapersden.com/image/download/purple-sunrise-4k-vaporwave_bGplZmiUmZqaraWkpJRmbmdlrWZlbWU.jpg",), 
					fit: BoxFit.cover, 
					), 
				), 
				), 
				
				//2nd Image of Slider 
				Container( 
				margin: EdgeInsets.all(6.0), 
				decoration: BoxDecoration( 
					borderRadius: BorderRadius.circular(8.0), 
					image: DecorationImage( 
					image: NetworkImage("https://uhdwallpapers.org/uploads/converted/20/01/14/the-mandalorian-5k-1920x1080_477555-mm-90.jpg"), 
					fit: BoxFit.cover, 
					), 
				), 
				), 
				
				//3rd Image of Slider 
				Container( 
				margin: EdgeInsets.all(6.0), 
				decoration: BoxDecoration( 
					borderRadius: BorderRadius.circular(8.0), 
					image: DecorationImage( 
					image: NetworkImage("https://images.wallpapersden.com/image/download/purple-sunrise-4k-vaporwave_bGplZmiUmZqaraWkpJRmbmdlrWZlbWU.jpg",), 
					fit: BoxFit.cover, 
					), 
				), 
				), 
				
				//4th Image of Slider 
				Container( 
				margin: EdgeInsets.all(6.0), 
				decoration: BoxDecoration( 
					borderRadius: BorderRadius.circular(8.0), 
					image: DecorationImage( 
					image: NetworkImage("ADD IMAGE URL HERE"), 
					fit: BoxFit.cover, 
					), 
				), 
				), 
				
				//5th Image of Slider 
				Container( 
				margin: EdgeInsets.all(6.0), 
				decoration: BoxDecoration( 
					borderRadius: BorderRadius.circular(8.0), 
					image: DecorationImage( 
					image: NetworkImage("ADD IMAGE URL HERE"), 
					fit: BoxFit.cover, 
					), 
				), 
				), 

		], 
			
			//Slider Container properties 
			options: CarouselOptions( 
				height: 180.0, 
				enlargeCenterPage: true, 
				autoPlay: true, 
				aspectRatio: 16 / 9, 
				autoPlayCurve: Curves.fastOutSlowIn, 
				enableInfiniteScroll: true, 
				autoPlayAnimationDuration: Duration(milliseconds: 800), 
				viewportFraction: 0.8, 
			), 
		), 
		], 
	),
			  bottomNavigationBar: BottomAppBar(
    child: Row(
      children: [
        IconButton(icon: Icon(Icons.menu), onPressed: () {}),
		Spacer(),
		 IconButton(icon: Icon(Icons.home), onPressed: () {}),
		 Spacer(),
		  IconButton(icon: Icon(Icons.mail), onPressed: () {}),
        Spacer(),
        IconButton(icon: Icon(Icons.search), onPressed: () {}),
        IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
      ],
    ),
  ),
     
    );
   
   }
}