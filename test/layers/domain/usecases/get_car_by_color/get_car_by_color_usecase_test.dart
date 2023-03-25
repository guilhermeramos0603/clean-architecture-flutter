import 'package:cleanarc/layers/domain/entities/car_entity.dart';
import 'package:cleanarc/layers/domain/usecases/get_car_by_color/get_car_by_color_usecase.dart';
import 'package:cleanarc/layers/domain/usecases/get_car_by_color/get_car_by_color_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test("should return a car instance when passed any color", () {
    GetCarByColorUseCase useCase = GetCarByColorUseCaseImp();

    var result = useCase("blue");

    expect(result, isInstanceOf<CarEntity>());
  });

  test("should return a four-door car when it is red", () {
    GetCarByColorUseCase useCase = GetCarByColorUseCaseImp();

    var result = useCase("red");

    expect(result.doorsQuantity, 4);
  });

  test("should return a two-door car when it is any other color", () {
    GetCarByColorUseCase useCase = GetCarByColorUseCaseImp();

    var result = useCase("yellow");

    expect(result.doorsQuantity, 2);
  });
}
