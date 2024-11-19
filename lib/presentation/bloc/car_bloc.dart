import 'package:bloc/bloc.dart';
import 'package:rentcars/domain/usecases/get_cars.dart';
import 'package:rentcars/presentation/bloc/car_event.dart';
import 'package:rentcars/presentation/bloc/car_state.dart';

class CarBloc extends Bloc<CarEvent, CarsState> {
  final GetCars getCars;

  CarBloc({required this.getCars}) : super(CarsLoading()) {
    on<LoadCars>((event, emit) async {
      emit(CarsLoading());
      try {
        final cars = await getCars.call();
        emit(CarsLoaded(cars: cars));
      } catch (e) {
        emit(CarsFailure(message: e.toString()));
      }
    });
  }
}
