class CarEntity {
  String plate;
  int doorsQuantity;
  double value;

  CarEntity({
    required this.plate,
    required this.doorsQuantity,
    required this.value,
  });

  double get valueCar {
    return value * doorsQuantity;
  }

  setLogic() {
    if (valueCar > 100000.00) {
      value *= 2;
    }
  }
}
