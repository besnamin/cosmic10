import 'package:cosmic10/models/populars_medel.dart';
import 'package:flutter/material.dart';

class CosmicHorizontal extends StatelessWidget {
  const CosmicHorizontal({Key? key, required this.populares}) : super(key: key);

  final List<Populars> populares;

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    return SizedBox(
      height: _screenSize.height * 0.25,
      child: PageView(
        pageSnapping: false,
        controller: PageController(
          initialPage: 1, 
          viewportFraction: 0.3),
        children: _tarjetas(context),
      ),
    );
  }

  _tarjetas(BuildContext context) {
    return populares.map((cosmic) {
      return Container(
        margin: const EdgeInsets.only(right: 15),
        child: ListView(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: FadeInImage(
                placeholder: const AssetImage('assets/img/no-image.jpg'),
                image: NetworkImage(cosmic.getPosterImg()),
                fit: BoxFit.cover,
                height: 160,
              ),
            ),
            const SizedBox(height: 5,),
            Center(child: Text(cosmic.title, overflow: TextOverflow.ellipsis, style: Theme.of(context).textTheme.caption,))
          ],
        ),
      );
    }).toList();
  }
}