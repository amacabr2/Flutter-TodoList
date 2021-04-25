import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_todo_list/entities/Todo.dart';

class TodoRepository {
  final CollectionReference collection = FirebaseFirestore.instance.collection('todos');

  Stream<QuerySnapshot> getStream() {
    return collection.snapshots();
  }

  Future<DocumentReference> add(Todo todo) {
    return collection.add(todo.toJson());
  }

  update(Todo todo) async {
    await collection.doc(todo.reference.id).update(todo.toJson());
  }
}
