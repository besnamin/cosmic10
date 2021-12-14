import 'package:cosmic10/Controller/theme_controller.dart';
import 'package:cosmic10/widgets/post_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Row(
            children: const [
              Icon(Icons.account_circle_rounded, size: 90,),
              Text('Nombre de usuario', style: TextStyle(fontWeight: FontWeight.w600),)
            ],
          ),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Icon(Icons.post_add_outlined, size: 35,),
              Icon(Icons.list_alt_outlined, size: 32,),
              Icon(Icons.message_outlined, size: 31,)
            ],
          ),
          
          
              const PostList()
            
          
           
        ],
      ),
    );
  }
}