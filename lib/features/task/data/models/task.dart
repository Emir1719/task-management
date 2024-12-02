// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Task {
  final String id;
  final String title;
  final String description;
  bool isComplete;

  Task({
    required this.id,
    required this.title,
    required this.description,
    this.isComplete = false,
  });

  Task copyWith({
    String? id,
    String? title,
    String? description,
    bool? isComplete,
  }) {
    return Task(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      isComplete: isComplete ?? this.isComplete,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'description': description,
      'isComplete': isComplete,
    };
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      id: map['id'] as String,
      title: map['title'] as String,
      description: map['description'] as String,
      isComplete: map['isComplete'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory Task.fromJson(String source) => Task.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Task(id: $id, title: $title, description: $description, isComplete: $isComplete)';
  }

  @override
  bool operator ==(covariant Task other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.title == title &&
      other.description == description &&
      other.isComplete == isComplete;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      title.hashCode ^
      description.hashCode ^
      isComplete.hashCode;
  }
}
