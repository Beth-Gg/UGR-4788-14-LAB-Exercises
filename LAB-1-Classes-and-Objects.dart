class Car {
  String brand;
  String model;
  int year;
  Car(this.brand, this.model, this.year);
}
void main() {
  Car Car1 = Car('Hyundai', 'Elantra', 2022);
  print('Brand: ${Car1.brand}');
  print('Model: ${Car1.model}');
  print('Year: ${Car1.year}');
}
