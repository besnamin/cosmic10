import 'package:card_swiper/card_swiper.dart';
import 'package:cosmic10/models/cosmic_model.dart';
import 'package:flutter/material.dart';

class CardSwiper extends StatelessWidget {
  const CardSwiper({ Key? key, 
  required this.peliculas 
  }) : super(key: key);

  final List<Result> peliculas;

  
  @override
  Widget build(BuildContext context) {

    final _screenSize = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.only(top: 15),
      child: Swiper(
        layout: SwiperLayout.STACK,
        itemWidth: _screenSize.width*0.5,
        itemHeight: _screenSize.height*0.4,
        itemBuilder: (BuildContext context, int index){
          return ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FadeInImage(
              image: NetworkImage(peliculas[index].getPosterImg()), 
              placeholder: const AssetImage('assets/img/no-image.jpg'),
              fit: BoxFit.cover,
            ),
            // child: Text(peliculas[index].toString()),
          );
          
          
        }, 
        itemCount: peliculas.length,
        // pagination: const SwiperPagination(),
        // control: const SwiperControl(),
      
      ),
    );
  }
}