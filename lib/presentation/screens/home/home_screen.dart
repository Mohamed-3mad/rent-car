import 'package:flutter/material.dart';
import 'package:rentcars/presentation/bloc/car_bloc.dart';
import 'package:rentcars/presentation/bloc/car_state.dart';
import 'package:rentcars/presentation/widgets/car_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff2c2b34),
        foregroundColor: Colors.black,
        title: const Text("Choose Your Car",
            style: TextStyle(color: Colors.white)),
      ),
      body: BlocBuilder<CarBloc, CarsState>(

        builder: (context, state) {
          if(state is CarsLoading){
            return const Center(child: CircularProgressIndicator());
          }else if(state is CarsLoaded){
          return ListView.builder(
              itemCount: state.cars.length,
              itemBuilder: (context, index) {
                return CarCard(car: state.cars[index]);
              });
          }else if(state is CarsFailure){
            return Center(child: Text("error : ${state.message}"));
          }
          return Container();
        },
      ),
  
    );
  }
}
