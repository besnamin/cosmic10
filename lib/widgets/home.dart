import 'package:cosmic10/Controller/theme_controller.dart';
import 'package:cosmic10/models/product_model.dart';
import 'package:cosmic10/pages/response_page.dart';
import 'package:cosmic10/providers/product_pool.dart';
import 'package:cosmic10/widgets/estados_list.dart';
import 'package:cosmic10/widgets/profile.dart';
import 'package:cosmic10/widgets/ubicacion_list.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  //final ThemeController controller;

  const Home({Key? key}) : super(key: key);

 @override
  State<Home> createState() => _EstadoPageState();
}

class _EstadoPageState extends State<Home> {
 

  // Listado de cadenas
  var listado = [
    Persona("10001", "Lippie Pencil", "5.0",
        "https://cdn.shopify.com/s/files/1/1338/0845/collections/lippie-pencil_grande.jpg?v=1512588769"),
    Persona(
        "10002",
        "Blotted Lip",
        "5.5",
        "https://cdn.shopify.com/s/files/1/1338/0845/products/brain-freeze_a_800x1200.jpg?v=1502255076"),
    Persona("10003", "Lippie Stix ", "5.5",
        "https://s3.amazonaws.com/donovanbailey/products/api_featured_images/000/001/046/original/open-uri20180708-4-1f333k1?1531086651"),
    Persona("10004", "No Filter Foundation", "12.0",
        "https://s3.amazonaws.com/donovanbailey/products/api_featured_images/000/001/045/original/open-uri20180708-4-4bvqii?1531074237"),
    Persona("10005", "Lipstick ", "26.0",
        "https://s3.amazonaws.com/donovanbailey/products/api_featured_images/000/001/044/original/data?1531071233"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: ListView.builder(
        itemCount: listado.length,
        itemBuilder: (context, i) {
          return Card(
            child: Row(
              children: [
                Image.network(listado[i].img, width: 150,
                    height: 150,
                    fit: BoxFit.fill),
                Expanded(
                  flex: 4,
                  child: Container(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      children: [
                        
                            const Text(
                              "Nombre: ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(listado[i].name),
                            
                          
                        const Text(
                          "Precio:",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(listado[i].desc),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
     
    );
  }
}

class Persona {
  late String id;
  late String name;
  late String desc;
  late String img;

  Persona(this.id, this.name, this.desc, this.img);
}