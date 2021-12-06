import 'package:cosmic10/Controller/cosmic_controller.dart';
import 'package:cosmic10/models/cosmic_model.dart';
import 'package:cosmic10/models/populars_medel.dart';
import 'package:cosmic10/providers/cosmic_privider.dart';
import 'package:cosmic10/widgets/card_swiper.dart';
import 'package:cosmic10/widgets/cosmic_horizontal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CosmicList extends StatelessWidget {
  CosmicList({Key? key}) : super(key: key);

  final cosmicProvider = CosmicProvider();

  @override
  Widget build(BuildContext context) {
    Get.put(CosmicController());

    return SizedBox(
      child: ListView(
        children: [
          const SizedBox(height: 15,),
          _swipperTarjetas(),
          const SizedBox(height: 30,),
          _footer(context),
          
        ],
      ),
    );
   
  }

  Widget _swipperTarjetas() {
    return FutureBuilder(
      future: cosmicProvider.getCosmic(),
      builder: (BuildContext context, AsyncSnapshot<List<Result>> snapshot) {
        if (snapshot.hasData) {
          return CardSwiper(peliculas: snapshot.data!);
        } else {
          return const SizedBox(
              height: 400, child: Center(child: CircularProgressIndicator()));
        }
      },
    );
  }

  _footer(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Text('Populares', style: Theme.of(context).textTheme.subtitle1),
          const SizedBox(height: 10.0),
          FutureBuilder(
            future: cosmicProvider.getCosmicPopulars(),
            builder: (BuildContext context, AsyncSnapshot<List<Populars>> snapshot) {
              if (snapshot.hasData) {
                return CosmicHorizontal(populares: snapshot.data!,);
              } else {
                return const SizedBox(
                    height: 400,
                    child: Center(child: CircularProgressIndicator()));
              }
              
              
            },
          ),
        ],
      ),
    );
  }
}