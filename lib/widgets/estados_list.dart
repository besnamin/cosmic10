import 'package:cosmic10/widgets/estados.dart';
import 'package:flutter/material.dart';

class EstadosList extends StatelessWidget {
  const EstadosList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: const [
          Estados(),
          Estados(),
          Estados(),
          Estados(),
          Estados(),
          Estados(),
          Estados(),
        ],
      ),
    );
      
    
  }
}