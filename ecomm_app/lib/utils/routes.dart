import 'package:ecomm_app/models/viewallmodel.dart';
import 'package:ecomm_app/utils/route_names.dart';
import 'package:ecomm_app/views/cart_screen.dart';
import 'package:ecomm_app/views/details.dart';
import 'package:ecomm_app/views/home_screen.dart';
import 'package:ecomm_app/views/main_screen.dart';
import 'package:ecomm_app/views/splash_screen.dart';
import 'package:ecomm_app/views/view_all.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesNames.splashScreen:
        return MaterialPageRoute(builder: (context) => SplashScreen());
      case RoutesNames.mainScreen:
        return MaterialPageRoute(builder: (context) => MainScreen());

      case RoutesNames.homeScreen:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case RoutesNames.cartScreen:
        return MaterialPageRoute(builder: (context) => CartScreen());
      case RoutesNames.viewAll:
        return MaterialPageRoute(builder: (context) => ViewAll());
      // case RoutesNames.details:
      //   return MaterialPageRoute(builder: (context) => DetailsScreen(item: ViewAllModel.viewAllItemsList[index],));
      default:
        return MaterialPageRoute(
            builder: (context) => Scaffold(
                  appBar: AppBar(
                    title: Text('No Route Defined'),
                  ),
                ));
    }
  }
}
