import 'package:cleanarc/layers/data/datasources/local/get_car_by_color_local_datasource_imp.dart';
import 'package:cleanarc/layers/data/repositories/get_car_by_color_repository_imp.dart';
import 'package:cleanarc/layers/data/repositories/save_favorite_car_repository_imp.dart';
import 'package:cleanarc/layers/domain/usecases/get_car_by_color/get_car_by_color_usecase_imp.dart';
import 'package:cleanarc/layers/domain/usecases/save_favorite_car/save_favorite_car_usecase_imp.dart';
import 'package:cleanarc/layers/presentation/controllers/car_controller.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class CarPage extends StatelessWidget {
  CarPage({super.key});

  final CarController controller = GetIt.I.get<CarController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(24),
        child: Text(controller.car.plate),
      ),
    );
  }
}
