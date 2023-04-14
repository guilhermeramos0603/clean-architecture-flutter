import 'dart:convert';

import 'package:cleanarc/layers/data/datasources/local/get_car_by_color_local_datasource_imp.dart';
import 'package:cleanarc/layers/data/dto/car_dto.dart';
import 'package:cleanarc/layers/data/repositories/get_car_by_color_repository_imp.dart';
import 'package:cleanarc/layers/domain/entities/car_entity.dart';
import 'package:cleanarc/layers/domain/repositories/get_car_by_color_repository.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  GetCarByColorRepository repository =
      GetCarByColorRepositoryImp(GetCarByColorLocalDataSourceImp());

  test("Should give back a car regardless of the color", () {
    var result = repository('any color');

    expect(result, isNotNull);
  });
}
