import 'dart:convert';

class UserEntity {
  final String userId;
  final String name;
  final String token;

  UserEntity({
    required this.userId,
    required this.name,
    required this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userId': userId,
      'name': name,
      'token': token,
    };
  }

  String toJson() => json.encode(toMap());

  factory UserEntity.fromMap(Map<String, dynamic> map) {
    return UserEntity(
      userId: map['userId'] as String,
      name: map['name'] as String,
      token: map['token'] as String,
    );
  }

  factory UserEntity.fromJson(String source) => UserEntity.fromMap(json.decode(source) as Map<String, dynamic>);
}
