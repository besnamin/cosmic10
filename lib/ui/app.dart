import 'package:cosmic10/Controller/theme_controller.dart';
import 'package:cosmic10/Controller/theme_managent.dart';
import 'package:cosmic10/Theme/themes.dart';
import 'package:cosmic10/pages/home_page.dart';
import 'package:cosmic10/pages/login_page.dart';
import 'package:cosmic10/pages/response_page.dart';
import 'package:cosmic10/pages/signup_page.dart';
import 'package:cosmic10/routes/my_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  // Dependency injection: setting up state management
  late final ThemeController controller = Get.put(ThemeController());
  // Theme management
  late final ThemeManager manager = ThemeManager();
  bool isLoaded = false;

  Future<void> initializeTheme() async {
    controller.darkMode = await manager.storedTheme;
    setState(() => isLoaded = true);
  }

  @override
  void initState() {
    ever(controller.reactiveDarkMode, (bool isDarkMode) {
      manager.changeTheme(isDarkMode: isDarkMode);
    });
    initializeTheme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return !isLoaded
        ? const CircularProgressIndicator()
        : GetMaterialApp(
            debugShowCheckedModeBanner: false,
            theme: MyTheme.ligthTheme,
            darkTheme: MyTheme.darkTheme,
            themeMode: ThemeMode.system,
            home: LoginPage(),
            routes: {
              '/login': (context) =>  LoginPage(),
              '/signup': (context) =>  SignupPage(),
              '/page': (context) => ResponsePage(),
             

            },
            //initialRoute: '/',
            //navigatorKey: Get.key,
            //getPages: routes(),
          );
  }
}