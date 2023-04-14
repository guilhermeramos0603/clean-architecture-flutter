import 'package:cleanarc/layers/data/datasources/get_car_by_color_datasource.dart';
import 'package:cleanarc/layers/data/dto/car_dto.dart';
import 'package:dartz/dartz.dart';

class GetCarByColorLocalDataSourceImp implements GetCarByColorDataSource {
  var jsonRed = {"carPlate": "ABC1234", "quantityDoors": 4, "price": 20000.00};
  var jsonAny = {"carPlate": "DEF4321", "quantityDoors": 2, "price": 10000.00};

  @override
  Either<Exception, CarDto> call(String color) {
    try {
      if (color.contains("red")) {
        return Right(CarDto.fromJson(jsonRed));
      }
      return Right(CarDto.fromJson(jsonAny));
    } catch (e) {
      return Left(Exception("ERROR GetCarByColorLocalDataSourceImp"));
    }
  }
}
