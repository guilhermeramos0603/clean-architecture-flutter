import '../../domain/entities/car_entity.dart';
import '../../domain/repositories/get_car_by_color_repository.dart';
import '../dto/car_dto.dart';

class GetCarByColorRepositoryImp implements GetCarByColorRepository {
  @override
  CarEntity call(String color) {
    var json = {"carPlate": "ABC1234", "quantityDoors": 2, "price": 1000.00};
    return CarDto.fromJson(json);
  }
}
