import 'package:cleanarc/layers/data/datasources/local/get_car_by_color_local_datasource_imp.dart';
import 'package:cleanarc/layers/data/repositories/get_car_by_color_repository_imp.dart';
import 'package:cleanarc/layers/domain/entities/car_entity.dart';
import 'package:cleanarc/layers/domain/repositories/get_car_by_color_repository.dart';
import 'package:cleanarc/layers/domain/usecases/get_car_by_color/get_car_by_color_usecase.dart';
import 'package:cleanarc/layers/domain/usecases/get_car_by_color/get_car_by_color_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test("should return a car instance when passed any color", () {
    GetCarByColorUseCase useCase = GetCarByColorUseCaseImp(
        GetCarByColorRepositoryImp(GetCarByColorLocalDataSourceImp()));

    var result = useCase("blue");

    late CarEntity resultExpected;

    result.fold((l) => null, (r) => resultExpected = r);

    expect(resultExpected, isInstanceOf<CarEntity>());
  });

  test("should return a four-door car when it is red", () {
    GetCarByColorUseCase useCase = GetCarByColorUseCaseImp(
        GetCarByColorRepositoryImp(GetCarByColorLocalDataSourceImp()));

    var result = useCase("red");
    late CarEntity resultExpected;

    result.fold((l) => null, (r) => resultExpected = r);

    expect(resultExpected.doorsQuantity, 4);
  });

  test("should return a two-door car when it is any other color", () {
    GetCarByColorUseCase useCase = GetCarByColorUseCaseImp(
        GetCarByColorRepositoryImp(GetCarByColorLocalDataSourceImp()));

    var result = useCase("yellow");
    late CarEntity resultExpected;

    result.fold((l) => null, (r) => resultExpected = r);

    expect(resultExpected.doorsQuantity, 2);
  });
}
