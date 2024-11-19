

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:rentcars/data/datasources/cars_data_source.dart';
import 'package:rentcars/data/repositories/car_repo_impl.dart';
import 'package:rentcars/domain/repositories/car_repo.dart';
import 'package:rentcars/domain/usecases/get_cars.dart';
import 'package:rentcars/presentation/bloc/car_bloc.dart';

GetIt getIt = GetIt.instance;

void initInjection () {

  try {

    getIt.registerLazySingleton(()=>FirebaseFirestore.instance);

    getIt.registerLazySingleton<CarsDataSource>(()=>CarsDataSource(firestore: getIt<FirebaseFirestore>()));

    getIt.registerLazySingleton<CarRepo>(()=>CarRepoImpl(dataSource: getIt<CarsDataSource>()));

    getIt.registerLazySingleton<GetCars>(()=>GetCars(getIt<CarRepo>()));

     getIt.registerFactory(()=>CarBloc(getCars: getIt<GetCars>()));
    
    
  } catch (e) {
    rethrow ;
  }
}