// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinitegleam/home/widgets/food_page_body/bloc/food_page_body_bloc.dart';
import 'package:infinitegleam/home/widgets/food_page_body/food_page_body.dart';
import 'package:infinitegleam/home/widgets/food_page_header/food_page_header.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        FoodPageHeader(),
        BlocProvider(
          create: (context) => FoodPageBodyBloc(),
          child: FoodPageBody(),
        ),
      ]),
    );
  }
}
