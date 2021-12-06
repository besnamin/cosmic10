import 'package:cosmic10/Theme/theme.dart';
import 'package:cosmic10/providers/cosmic_privider.dart';
import 'package:cosmic10/routes/my_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();

Get.lazyPut(()=> CosmicProvider());

runApp(const MyApp());
} 

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Cosmic Beuaty',
        theme: miTema,
        initialRoute: '/',
        navigatorKey: Get.key,
        getPages: routes(),
        // routes: {
        //   'login'    : ( BuildContext context ) => LoginScreen(),
        //   'signup'   : ( BuildContext context ) => SignupScreen(),
        //   'home'     : ( BuildContext context ) => HomeScreen()
        // },
        
      );
    
  }
}