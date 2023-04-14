import 'package:cleanarc/layers/data/dto/car_dto.dart';
import 'package:dartz/dartz.dart';

abstract class GetCarByColorDataSource {
  Either<Exception, CarDto> call(String color);
}
