import 'package:cleanarc/layers/data/dto/car_dto.dart';

abstract class GetCarByColorDataSource {
  CarDto call(String color);
}
