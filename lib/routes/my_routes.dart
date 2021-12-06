import 'package:cosmic10/pages/home_page.dart';
import 'package:cosmic10/pages/login_page.dart';
import 'package:cosmic10/pages/signup_page.dart';
import 'package:get/get.dart';

routes() =>[
  GetPage<LoginPage>(name: '/', page: ()=> LoginPage() ),
  GetPage<SignupPage>(name: '/signup', page: ()=> SignupPage() ),
  GetPage<HomePage>(name: '/home', page: ()=> HomePage() ),
];