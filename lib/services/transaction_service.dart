import 'package:airplane/models/transaction_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TransactionService {
  final CollectionReference _transactionRef =
      FirebaseFirestore.instance.collection('transactions');

  Future<void> createTransaction(TransactionModel transaction) async {
    try {
      await _transactionRef.add(transaction.toJson(transaction));
    } catch (e) {
      rethrow;
    }
  }

  Future<List<TransactionModel>> getTransactionsByUser(String userId) async {
    try {
      QuerySnapshot<Object?> result =
          await _transactionRef.where("user.id", isEqualTo: userId).get();
      List<TransactionModel> transaction = result.docs
          .map((transaction) => TransactionModel.fromJson(
              transaction.id, transaction.data() as Map<String, dynamic>))
          .toList();
      return transaction;
    } catch (e) {
      rethrow;
    }
  }
}
