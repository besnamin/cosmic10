import 'package:cosmic10/Controller/theme_controller.dart';
import 'package:flutter/material.dart';

class Ubication extends StatelessWidget {
  const Ubication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var boxDecoration = BoxDecoration(
      color: Colors.white,
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(5),
          topRight: Radius.circular(5),
          bottomLeft: Radius.circular(5),
          bottomRight: Radius.circular(5)),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          spreadRadius: 3,
          blurRadius: 3,
          offset: const Offset(0, 2), // changes position of shadow
        ),
      ],
    );

    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        const SizedBox(
            height: 20,
          ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          width: size.width * 0.8,
          child: const Text('Cargando mapa con la ubicacion del usuario...'),
          decoration: boxDecoration,
        ),

        const SizedBox(
          height: 10,
        ),

        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          width: size.width * 0.2,
          child: Column(
            children: const [
              Icon(Icons.account_circle_rounded, size: 40,),
              Text('usuario')
            ],)
          
        ),
      ],
    );
  }
}