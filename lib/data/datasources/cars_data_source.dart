import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rentcars/data/models/car.dart';

class CarsDataSource {

  final FirebaseFirestore firestore;

  CarsDataSource({required this.firestore});

  Future<List<Car>> getCars() async {
    var snapshot = await firestore.collection('cars').get();

    return snapshot.docs.map((doc)=>Car.fromMap(doc.data())).toList();
  }
}

