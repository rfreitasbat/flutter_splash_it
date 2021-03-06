import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:split_it/shared/models/base_model.dart';

class FirebaseRepository {
  FirebaseFirestore get firestore => FirebaseFirestore.instance;

  Future<String> create<T extends BaseModel>(T data) async {
    try {
      final response =
          await firestore.collection(data.collection).add(data.toMap());
      return response.id;
    } catch (e) {
      throw e;
    }
  }

  Future<List<Map<String, dynamic>>> where(
      {required String key,
      required String value,
      required String collection}) async {
    try {
      final response = await firestore
          .collection(collection)
          .where(key, isEqualTo: value)
          .get();
      return response.docs.map((e) => e.data()).toList();
    } catch (e) {
      throw e;
    }
  }

  Future<List<Map<String, dynamic>>> get(String colletion) async {
    try {
      final response = await this.firestore.collection(colletion).get();
      return response.docs.map((e) => e.data()).toList();
    } catch (e) {
      throw e;
    }
  }

  update() {}

  delete() {}

  firstWhere() {}
}
