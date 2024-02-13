import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_auth/responsive.dart';
import '../../components/background.dart';
import 'components/sign_up_top_image.dart';
import 'components/dashmain.dart';
import 'package:carousel_slider/carousel_slider.dart'; 
import 'first.dart';
import 'second.dart';
import 'third.dart';
import 'forth.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.blue,
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
					image: NetworkImage("https://uhdwallpapers.org/uploads/converted/20/01/14/the-mandalorian-5k-1920x1080_477555-mm-90.jpg"), 
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
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.green),
                accountName: Text(
                  "Abhishek Mishra",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("abhishekm977@gmail.com"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 165, 255, 137),
                  child: Text(
                    "A",
                    style: TextStyle(fontSize: 30.0, color: Colors.blue),
                  ), //Text
                ), //circleAvatar
              ), //UserAccountDrawerHeader
            ), //DrawerHeader
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text(' My Profile '),
              onTap: () {
                
				Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const First()),
              );
              },
            ),
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text(' Laundary services '),
              onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Second()),
              );
              },
            ),
            ListTile(
              leading: const Icon(Icons.workspace_premium),
              title: const Text(' Home cleaning '),
              onTap: () {
                Navigator.push(
                context,
        MaterialPageRoute(builder: (context) => const Third()),
              );
              },
            ),
            ListTile(
              leading: const Icon(Icons.video_label),
              title: const Text(' Car washing '),
              onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Forth()),
              );
              },
            ),
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text(' Edit Profile '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('LogOut'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ), //Drawer
	  
	  
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