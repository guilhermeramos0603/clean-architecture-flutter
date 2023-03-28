import 'dart:convert';

import 'package:cleanarc/layers/data/dto/car_dto.dart';
import 'package:cleanarc/layers/domain/entities/car_entity.dart';
import 'package:cleanarc/layers/domain/repositories/get_car_by_color_repository.dart';
import 'package:flutter_test/flutter_test.dart';

class GetCarByColorRepositoryImp implements GetCarByColorRepository {
  @override
  CarEntity call(String color) {
    var json = {"carPlate": "ABC1234", "quantityDoors": 2, "price": 1000.00};
    return CarDto.fromJson(json);
  }
}

main() {
  GetCarByColorRepository repository = GetCarByColorRepositoryImp();

  test("Should give back a car regardless of the color", () {
    var result = repository('any color');

    expect(result, isNotNull);
  });
}
