class RoleResponse {
  final String id;
  final String name;
  final String description;
  final int userCount;

  RoleResponse({
    required this.id,
    required this.name,
    required this.description,
    required this.userCount,
  });

  factory RoleResponse.fromJson(Map<String, dynamic> json) {
    return RoleResponse(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      userCount: json['userCount'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'userCount': userCount,
    };
  }
}