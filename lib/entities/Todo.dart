import 'package:cloud_firestore/cloud_firestore.dart';

enum TodoStatus {
  PENDING,
  CANCELED,
  DONE,
}

class Todo {
  String id;

  String title;

  String description;

  TodoStatus status;

  DateTime createdAt;

  DateTime mustDoneAt;

  DocumentReference reference;

  Todo({
    this.id,
    this.title,
    this.description,
    this.status,
    this.createdAt,
    this.mustDoneAt
  });

  factory Todo.fromJson(Map<String, dynamic> json) => Todo(
    id: json['id'] as String,
    title: json['title'] as String,
    description: json['description'] as String,
    status: json['status'] as TodoStatus,
    createdAt: json['createdAt'] as DateTime,
    mustDoneAt: json['mustDoneAt'] as DateTime,
  );
  
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': this.id,
    'points': this.title,
    'description': this.description,
    'status': this.status,
    'createdAt': this.createdAt,
    'mustDoneAt': this.mustDoneAt,
  };
}