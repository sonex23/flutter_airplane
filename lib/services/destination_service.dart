import 'package:airplane/models/destination_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DestinationService {
  final CollectionReference _destinationRefference =
      FirebaseFirestore.instance.collection('destinations');

  Future<List<DestinationModel>> getAllDestinations() async {
    try {
      QuerySnapshot result = await _destinationRefference.get();

      List<DestinationModel> destinations = result.docs
          .map((destination) => DestinationModel.fromJson(
              destination.id, destination.data() as Map<String, dynamic>))
          .toList();

      return destinations;
    } catch (e) {
      throw e;
    }
  }
}
