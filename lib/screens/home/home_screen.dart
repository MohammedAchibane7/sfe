import 'package:flutter/material.dart';
import 'package:flutter_application_1/enums/menu_state.dart';

import 'widgets/costum_app_bar.dart';
import 'widgets/costum_buttomnavbar.dart';
import 'widgets/costum_categories.dart';
import 'widgets/costume_cashback.dart';

import 'widgets/product/popularproducts.dart';
import 'widgets/specialoffers.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: 10),
              CostumAppBar(),
              SizedBox(height: 10),
              CashBack(),
              SizedBox(height: 10),
              Categories(),
              SizedBox(height: 10,),
              SpecialOffers(),
              SizedBox(height: 20,),
              PopularProducts(),
              SizedBox(height: 10,),
              Text("data"),
            ],
            // CostumAppBar(),
            // CostumCashBack(),
            // SizedBox(height: 10,),
            // Categories(),
            // SizedBox(height: 10,),
            // SpecialOffers(),
            // SizedBox(height: 10,),
            // PopularProducts(),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.favourite,),
    );
  }
}

