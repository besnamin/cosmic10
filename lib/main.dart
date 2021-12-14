import 'package:cosmic10/Controller/theme_controller.dart';
import 'package:cosmic10/Theme/theme.dart';
import 'package:cosmic10/providers/cosmic_privider.dart';
import 'package:cosmic10/routes/my_routes.dart';
import 'package:cosmic10/ui/app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();

Get.lazyPut(()=> CosmicProvider());
Get.lazyPut(()=> ThemeController());

runApp(const App());
} 