import 'package:flutter/material.dart';

class Cosmic extends StatelessWidget {
  const Cosmic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
    return Container(
      margin: const EdgeInsets.only(top: 15) ,
      child: Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            width: size.width * 0.2,
            child: const Text('Imagen del maquillaje'),
            decoration: boxDecoration,
          ),
          const SizedBox(
            width: 30,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            width: size.width * 0.6,
            child: const Text(
                'Bienvenido, aqui podras encontrar las mejores lineas de maquillaje y cuidado personal.'),
            decoration: boxDecoration,
          ),
        ],
      ),
    );

    
  }

  
}