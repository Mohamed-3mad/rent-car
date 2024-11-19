import 'package:rentcars/data/datasources/cars_data_source.dart';
import 'package:rentcars/data/models/car.dart';
import 'package:rentcars/domain/repositories/car_repo.dart';

class CarRepoImpl implements CarRepo {

  final CarsDataSource dataSource;

  CarRepoImpl({required this.dataSource});

  @override
  Future<List<Car>> fetchCars() {
    return dataSource.getCars();
  } 
  
}