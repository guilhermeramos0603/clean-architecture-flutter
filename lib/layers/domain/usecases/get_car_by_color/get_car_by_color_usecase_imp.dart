import 'package:cleanarc/layers/domain/entities/car_entity.dart';
import 'package:cleanarc/layers/domain/usecases/get_car_by_color/get_car_by_color_usecase.dart';

class GetCarByColorUseCaseImp implements GetCarByColorUseCase {
  @override
  CarEntity call(String color) {
    if (color.contains("red")) {
      return CarEntity(plate: "ABC1234", doorsQuantity: 4, value: 50.000);
    }
    return CarEntity(plate: "DEF5678", doorsQuantity: 2, value: 20.000);
  }
}
