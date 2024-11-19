import 'package:rentcars/data/models/car.dart';
import 'package:rentcars/domain/repositories/car_repo.dart';

class GetCars {
  final CarRepo repo;
  GetCars(this.repo);

  Future<List<Car>> call() async{
   return await repo.fetchCars();
  } 
}