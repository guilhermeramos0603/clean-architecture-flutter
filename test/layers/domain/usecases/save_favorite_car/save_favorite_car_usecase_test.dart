import 'package:cleanarc/layers/domain/entities/car_entity.dart';
import 'package:cleanarc/layers/domain/repositories/save_favorite_car_repository.dart';
import 'package:cleanarc/layers/domain/usecases/save_favorite_car/save_favorite_car_usecase.dart';
import 'package:cleanarc/layers/domain/usecases/save_favorite_car/save_favorite_car_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

class SaveFavoriteCarRepositoryImp implements SaveFavoriteCarRepository {
  @override
  Future<bool> call(CarEntity carEntity) async {
    return carEntity.value > 0;
  }
}

main() {
  test("Should save the car with success", () async {
    SaveFavoriteCarUseCase useCase =
        SaveFavoriteCarUseCaseImp(SaveFavoriteCarRepositoryImp());

    var car = CarEntity(plate: "ABC1234", doorsQuantity: 3, value: 1);

    var result = await useCase(car);

    expect(result, true);
  });

  test("Shouldn't save the car if value is equal a zero", () async {
    SaveFavoriteCarUseCase useCase =
        SaveFavoriteCarUseCaseImp(SaveFavoriteCarRepositoryImp());

    var car = CarEntity(plate: "ABC1234", doorsQuantity: 3, value: 0);

    var result = await useCase(car);

    expect(result, false);
  });
}
