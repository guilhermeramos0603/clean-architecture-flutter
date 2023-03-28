import 'package:cleanarc/layers/domain/entities/car_entity.dart';

class CarDto extends CarEntity {
  String carPlate;
  int quantityDoors;
  double price;

  CarDto({
    required this.carPlate,
    required this.quantityDoors,
    required this.price,
  }) : super(plate: carPlate, doorsQuantity: quantityDoors, value: price);

  toJson() {
    return {
      "carPlate": carPlate,
      "quantityDoors": quantityDoors,
      "price": price
    };
  }

  CarDto fromJson(Map json) {
    return CarDto(
        carPlate: json['carPlate'],
        quantityDoors: json['quantityDoors'],
        price: json['price']);
  }
}
