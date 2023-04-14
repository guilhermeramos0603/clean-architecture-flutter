import 'package:cleanarc/layers/data/repositories/save_favorite_car_repository_imp.dart';
import 'package:cleanarc/layers/domain/entities/car_entity.dart';
import 'package:cleanarc/layers/domain/repositories/save_favorite_car_repository.dart';
import 'package:cleanarc/layers/domain/usecases/save_favorite_car/save_favorite_car_usecase.dart';
import 'package:cleanarc/layers/domain/usecases/save_favorite_car/save_favorite_car_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test("Should save the car with success", () async {
    SaveFavoriteCarUseCase useCase =
        SaveFavoriteCarUseCaseImp(SaveFavoriteCarRepositoryImp());

    var car = CarEntity(plate: "ABC1234", doorsQuantity: 3, value: 1);

    var result = await useCase(car);

    late bool resultExpected;

    result.fold((l) => null, (r) => resultExpected = r);

    expect(resultExpected, true);
  });

  test("Shouldn't save the car if value is equal a zero", () async {
    SaveFavoriteCarUseCase useCase =
        SaveFavoriteCarUseCaseImp(SaveFavoriteCarRepositoryImp());

    var car = CarEntity(plate: "ABC1234", doorsQuantity: 3, value: 0);

    var result = await useCase(car);

    late bool resultExpected;

    result.fold((l) => null, (r) => resultExpected = r);

    expect(resultExpected, false);
  });
}
