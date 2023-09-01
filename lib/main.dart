import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/instance_manager.dart';
import 'package:test_driven_development/promo/data/models/promo_model.dart';
import 'package:test_driven_development/promo/presentation/state/promo_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final promoUsecase = Get.put(PromoController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      color: Colors.black,
      initialRoute: "/",
      home: Scaffold(
        body: const Center(
          child: Text("Example of Clean Architecture"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            promoUsecase.saveFavPromo(
              promo: PromoModel(
                duration: 2,
                eventName: "eventName",
                poster: 'poster',
              ),
            );
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
