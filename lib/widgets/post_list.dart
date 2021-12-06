import 'package:cosmic10/widgets/post.dart';
import 'package:flutter/material.dart';

class PostList extends StatelessWidget {
  const PostList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
          children: const [
            Post(),
            Post(),
            Post(),
            Post()
          ],
        
      ),
    );
      
    
  }
}