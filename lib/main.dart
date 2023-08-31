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

  final usecase = Get.put(PromoController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      color: Colors.black,
      initialRoute: "/",
      home: Scaffold(
        body: const Center(
          child: Text("Center text"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            usecase.saveFavPromo(
              promo: PromoModel(
                duration: DateTime.now(),
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
