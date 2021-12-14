import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{

  final FirebaseAuth _auth = FirebaseAuth.instance;

  GlobalKey<FormState> loginKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();


// Example code of how to sign in with email and password.
  Future<void> signInWithEmailAndPassword() async {
    try {
      final User user = (await _auth.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      ))
          .user!;
      Get.snackbar('Bienvenido', 'Su ingreso ha sido exitoso');
      Future.delayed(
        const Duration(milliseconds: 500),
        (){
          //Get.toNamed('/home');
          Get.toNamed('/page');
        }
      );
    } catch (e){
      Get.snackbar('Error', 'Fallo en la autenticación', 
      snackPosition: SnackPosition.TOP);
    }
  }

 /// Example code for sign out.
  Future<void> _signOut() async {
    await _auth.signOut();
  }

  void signOut() async {
    final User? user = await _auth.currentUser;
    if (user == null) {
      Get.snackbar('Out', 'No hay sesión iniciada', 
      snackPosition: SnackPosition.TOP);
      return;
    }

    _signOut();
    final String uid = user.uid;
    Get.snackbar('Out', '$uid ha cerrado sesión correctamente',
    snackPosition: SnackPosition.TOP);
    Get.toNamed('/login');
    
  }

}
