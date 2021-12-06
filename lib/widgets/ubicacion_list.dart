import 'package:cosmic10/widgets/ubicacion.dart';
import 'package:flutter/material.dart';

class UbicationList extends StatelessWidget {
  const UbicationList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: const [
          Ubication(),
          Ubication(),
          Ubication(),
          Ubication(),
          Ubication(),
          Ubication(),
          Ubication(),
          Ubication(),
          Ubication(),
          Ubication(),
        ],
      ),
    );
      
    
  }
}