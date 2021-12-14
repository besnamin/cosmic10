import 'package:cosmic10/Controller/theme_controller.dart';
import 'package:cosmic10/pages/response_screen.dart';
import 'package:cosmic10/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResponsePage extends StatelessWidget {
  final ThemeController controller = Get.find();
  ResponsePage({Key? key}) : super(key: key);
 

  // We create a Scaffold that is used for all the content pages
  // We only define one AppBar, and one scaffold.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        controller: controller,
        tile: const Text("Cosmic Beuty"),
        context: context,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
          child: ResponseScreen(controller: controller),
        ),
      ),
      
            bottomNavigationBar : BottomNavigationBar(
            selectedItemColor: Colors.pink,
            unselectedItemColor: Colors.black,
            currentIndex: 0,
            
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.post_add), label: 'Estados'),
              BottomNavigationBarItem(icon: Icon(Icons.location_on_outlined), label: 'Ubicacion'),
              BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: 'Perfil'),
            ],
          )
    );
  }
}
