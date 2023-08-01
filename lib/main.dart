import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinitegleam/home/main_food_page.dart';
import 'package:infinitegleam/utils/dimension.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // final textScaleFactor = MediaQuery.of(context).textScaleFactor; // used to scale text according to users accessibility settings

    // ResponsiveCubit responsiveCubit = ResponsiveCubit(initialSize);
    Dimensions.init(MediaQuery.of(context).size);
    // I can combine dimension.init method with a layout builder to change the size of widgets according to the size

    // return ScreenUtilInit(
    //   designSize: const Size(390, 844),
    //   builder: (context, child) => GetMaterialApp(
    //     // with get material app we could initialize getx
    //     debugShowCheckedModeBanner: false,
    //     title: 'Flutter Demo',
    //     theme: ThemeData(
    //       colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    //       useMaterial3: true,
    //     ),
    //     home: const MainFoodPage(),
    //   ),
    // );

    return LayoutBuilder(
      builder: (context, constraints) {
        Dimensions.init(constraints.biggest);
        return GetMaterialApp(
          // with get material app we could initialize getx
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const MainFoodPage(),
        );
      },
    );
  }
}
