import 'package:cleanarc/layers/data/datasources/get_car_by_color_datasource.dart';
import 'package:dartz/dartz.dart';

import '../../domain/entities/car_entity.dart';
import '../../domain/repositories/get_car_by_color_repository.dart';

class GetCarByColorRepositoryImp implements GetCarByColorRepository {
  final GetCarByColorDataSource _getCarByColorDataSource;

  GetCarByColorRepositoryImp(this._getCarByColorDataSource);
  @override
  Either<Exception, CarEntity> call(String color) {
    return _getCarByColorDataSource(color);
  }
}
