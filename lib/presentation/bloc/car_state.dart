import 'package:rentcars/data/models/car.dart';

abstract class CarsState {}

class CarsInitial extends CarsState{}
class CarsLoading extends CarsState{}
class CarsLoaded extends CarsState{
  final List<Car> cars;

  CarsLoaded({required this.cars}); 
  
}

class CarsFailure extends CarsState{
  final String message;

  CarsFailure({required this.message});

}