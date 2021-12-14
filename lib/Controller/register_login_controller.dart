import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginRegisterController extends GetxController{

  final FirebaseAuth _auth = FirebaseAuth.instance;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  late bool _success;
  late String _userEmail;  


  @override
  void dispose(){
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

   // Example code for registration.
  Future<void> register() async {
    final User? user = (await _auth.createUserWithEmailAndPassword(
      email: emailController.text,
      password: passwordController.text,
    ))
        .user;
    if (user != null) {
      _success = true;
      Get.snackbar('Registrado', 'Se ha registrado correctamente');
      Future.delayed(
        const Duration(milliseconds: 500),
        (){
          Get.offAndToNamed('/login');
        },
      );
      _userEmail = user.email!;
    } else{
      _success = false;
    }
  }

}