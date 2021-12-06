import 'package:cosmic10/Controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  final controller = Get.put(LoginController());

  LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GetBuilder<LoginController>(
      init: LoginController(),
      builder: (_) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
                child: Text(
              'Iniciar Sesión',
              style: TextStyle(
                  color: Colors.pinkAccent, fontSize: 18, fontWeight: FontWeight.bold),
            )),
            const SizedBox(
              height: 40,
            ),
            _loginForm(context),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              child: const Text('Registrarse',
                  style: TextStyle(color: Colors.pinkAccent, fontSize: 14)),
              onPressed: () {
                Get.offAndToNamed('/signup');
              },
            ),
          ],
        );
      },
    ));
    //  );
  }

  Widget _loginForm(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SizedBox(
        width: size.width * 0.8,
        child: Form(
          key: controller.loginKey,
          child: Column(
            children: [
              _crearEmail(),
              const SizedBox(
                height: 30,
              ),
              _crearPassword(),
              const SizedBox(
                height: 40,
              ),
              _crearBoton(context)
            ],
          ),
        ),
      ),
    );
  }

  Widget _crearEmail() {
    return TextFormField(
        controller: controller.emailController,
        keyboardType: TextInputType.emailAddress,
        decoration: const InputDecoration(
            icon: Icon(
              Icons.email_outlined,
              color: Colors.pinkAccent,
            ),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black54)),
            // hintText: 'ejemplo@correo.com',
            labelText: 'Correo electronico',
            labelStyle: TextStyle(color: Colors.black54)),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Por favor ingrese un correo';
          }
          return null;
        });
  }

  Widget _crearPassword() {
    return TextFormField(
        controller: controller.passwordController,
        obscureText: true,
        decoration: const InputDecoration(
            icon: Icon(
              Icons.lock_outline,
              color: Colors.pinkAccent,
            ),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black54)),
            // hintText: 'ejemplo@correo.com',
            labelText: 'Contraseña',
            labelStyle: TextStyle(color: Colors.black54)),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Por favor ingrese una contraseña';
          }
          return null;
        });
  }

  Widget _crearBoton(BuildContext context) {
    return ElevatedButton(
        child: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 90.0, vertical: 12.0),
            child: const Text('Ingresar')),
        style: ElevatedButton.styleFrom(
          primary: Colors.pink,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        ),
        onPressed: () async {
          if (controller.loginKey.currentState!.validate()) {
            await controller.signInWithEmailAndPassword();
          }
        });
  }
}