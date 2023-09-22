import 'package:ecomm_app/utils/provider/cartprovider.dart';
import 'package:ecomm_app/utils/route_names.dart';
import 'package:ecomm_app/utils/routes.dart';
import 'package:ecomm_app/views/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CartProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Ecomm App',
        initialRoute: RoutesNames.splashScreen,
        onGenerateRoute: Routes.generateRoute,
      ),
    );
  }
}
