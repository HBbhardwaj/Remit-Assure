import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freshproject/app_routes/app_routes.dart';
import 'package:freshproject/app_routes/routes.dart';
import 'package:freshproject/utils/app_strings.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'api/app_binding/rest_client_binding.dart';

void main() async{
 await  GetStorage.init('RemitAssure');
    WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // transparent status bar
  ),);
   SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName,
      theme: ThemeData.light().copyWith(),
      initialBinding: RestClientBinding(),
      initialRoute: Routes.splashScreen,
      getPages: appRoutes(),
    );
  }
}
