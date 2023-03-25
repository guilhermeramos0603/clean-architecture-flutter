import 'package:cleanarc/layers/domain/entities/car_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test("Car entity shouldn't be null", () {
    CarEntity entity =
        CarEntity(plate: "ABC1233", doorsQuantity: 4, value: 20000.00);
    expect(entity, isNotNull);
  });

  test("Car doors should be a number", () {
    CarEntity entity =
        CarEntity(plate: "ABC1233", doorsQuantity: 4, value: 20000.00);
    expect(entity.doorsQuantity.runtimeType, int);
  });

  test("Car value should be a double", () {
    CarEntity entity =
        CarEntity(plate: "ABC1233", doorsQuantity: 4, value: 20000.00);
    expect(entity.value.runtimeType, double);
  });
  test("The car entity should multiply the value by the numbers of doors", () {
    CarEntity entity =
        CarEntity(plate: "ABC1233", doorsQuantity: 4, value: 20000.00);
    expect(entity.valueCar, 20000 * 4);
  });

  test(
      "if the valueCar is bigger than 100.000,00 multiplied by doors, value multiply by 2",
      () {
    CarEntity entity =
        CarEntity(plate: "ABC1233", doorsQuantity: 4, value: 30000.00);
    entity.setLogic();
    expect(entity.value, 60000.00);
  });

  test(
      "if the valueCar is smaller than 100.000,00 multiplied by doors, value can't changed",
      () {
    CarEntity entity =
        CarEntity(plate: "ABC1233", doorsQuantity: 4, value: 10000.00);
    entity.setLogic();
    expect(entity.value, 10000.00);
  });
}
