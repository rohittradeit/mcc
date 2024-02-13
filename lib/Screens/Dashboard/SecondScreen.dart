import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_auth/responsive.dart';
import '../../components/background.dart';
import 'components/sign_up_top_image.dart';
import 'components/dashmain.dart';





// Define a data class for the image data
class ImageData {
  final String imagePath;
  final String name;
  final String description;

  ImageData({
    required this.imagePath,
    required this.name,
    required this.description,
  });
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // Define a list of ImageData objects
    List<ImageData> imageDataList = [
      ImageData(
        imagePath: "assets/images/hm1.jpg",
        name: "Image 1",
        description: "This is the first image.",
      ),
      ImageData(
        imagePath: "assets/images/hm1.jpg",
        name: "Image 2",
        description: "This is the second image.",
      )
    ];

    return Scaffold(
	   appBar: AppBar(
        
        backgroundColor: Colors.white,
      ),
        body:

        // Create a ListView widget with the list of ImageData objects
        ListView.separated(
            itemCount: imageDataList.length, // Set the number of items in the list
            separatorBuilder: (BuildContext context, int index) => const Divider(), // Add a divider between each item in the list
            itemBuilder: (BuildContext context, int index) {
              final imageData = imageDataList[index]; // Get the ImageData object at the current index
              return ListTile(
                leading: Image.asset(imageData.imagePath), // Display the image on the left side of the ListTile
                title: Text(imageData.name), // Display the name as the title of the ListTile
                subtitle: Text(imageData.description), // Display the description as the subtitle of the ListTile
              );
            }
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