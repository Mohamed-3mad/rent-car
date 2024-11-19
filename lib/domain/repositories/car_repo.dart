import 'package:rentcars/data/models/car.dart';

abstract class CarRepo {
  Future<List<Car>> fetchCars() ;
}
