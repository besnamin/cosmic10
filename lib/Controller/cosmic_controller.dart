import 'package:cosmic10/models/cosmic_model.dart';
import 'package:cosmic10/providers/cosmic_privider.dart';
import 'package:get/get.dart';

class CosmicController extends GetxController{

 final cosmicList = <Result>[]; 
 final cosmicProvider = Get.find<CosmicProvider>();

 CosmicController(){

   getCosmic();
   
 }

 Future getCosmic() async{

   final cosmic = await cosmicProvider.getCosmic();
   cosmicList.addAll(cosmic);
   update();

 }

}