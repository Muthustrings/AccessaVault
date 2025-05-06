// API models and service for Users feature

class UserRequest {
  final String username;
  final String email;
  final String role;
  final String status;
  final String group;

  UserRequest({required this.username, required this.email, required this.role, required this.status, required this.group});

  Map<String, dynamic> toJson() => {
    'username': username,
    'email': email,
    'role': role,
    'status': status,
    'group': group,
  };
}

class UserResponse {
  final String id;
  final String username;
  final String email;
  final String role;
  final String status;
  final String group;

  UserResponse({required this.id, required this.username, required this.email, required this.role, required this.status, required this.group});

  factory UserResponse.fromJson(Map<String, dynamic> json) => UserResponse(
    id: json['id'] ?? '',
    username: json['username'] ?? '',
    email: json['email'] ?? '',
    role: json['role'] ?? '',
    status: json['status'] ?? '',
    group: json['group'] ?? '',
  );
}

class UsersApiService {
  // Example method for adding a user
  Future<UserResponse> addUser(UserRequest request) async {
    // TODO: Implement API call
    // Example placeholder
    await Future.delayed(Duration(seconds: 1));
    return UserResponse(
      id: '1',
      username: request.username,
      email: request.email,
      role: request.role,
      status: request.status,
      group: request.group,
    );
  }

  // Example method for fetching users
  Future<List<UserResponse>> fetchUsers() async {
    // TODO: Implement API call
    // Example placeholder
    await Future.delayed(Duration(seconds: 1));
    return [
      UserResponse(id: '1', username: 'Tom Cook', email: 'tom.cook@example.com', role: 'Admin', status: 'Active', group: 'Marketing'),
      UserResponse(id: '2', username: 'Lindsay Walton', email: 'lindsay.walton@example.com', role: 'User', status: 'Active', group: 'Sales'),
    ];
  }

  // Method for editing a user
  Future<UserResponse> editUser(String id, UserRequest request) async {
    // TODO: Implement API call
    // Example: Replace with actual API or SQL update logic
    // Example using pseudo-SQL (replace with real DB/API call):
    // UPDATE users SET username=?, email=?, role=?, status=?, group=? WHERE id=?
    await Future.delayed(Duration(milliseconds: 500));
    // Simulate updated user
    return UserResponse(
      id: id,
      username: request.username,
      email: request.email,
      role: request.role,
      status: request.status,
      group: request.group,
    );
  }

  // Method for updating a user
  Future<UserResponse> updateUser(String id, UserRequest request) async {
    // Simulate database update logic
    await Future.delayed(Duration(milliseconds: 500));
    // Return updated user (in real app, fetch from DB after update)
    return UserResponse(
      id: id,
      username: request.username,
      email: request.email,
      role: request.role,
      status: request.status,
      group: request.group,
    );
  }

  // Method for deleting a user
  Future<void> deleteUser(String id) async {
    // Simulate database delete logic
    await Future.delayed(Duration(milliseconds: 500));
    // In real app, perform delete in DB
    return;
  }

  // Method for user registration (sign up)
  Future<UserResponse> signUp(String username, String email, String password) async {
    // TODO: Implement API call to register a new user
    // Hash the password before sending to backend
    await Future.delayed(Duration(seconds: 1));
    return UserResponse(
      id: '3',
      username: username,
      email: email,
      role: 'User',
      status: 'Active',
      group: '',
    );
  }

  // Method for user authentication (login)
  Future<UserResponse?> login(String email, String password) async {
    // TODO: Implement API call to authenticate user
    // Hash the password before sending to backend
    await Future.delayed(Duration(seconds: 1));
    // Example: return user if credentials match, else return null
    if (email == 'test@example.com' && password == 'password') {
      return UserResponse(
        id: '1',
        username: 'Test User',
        email: email,
        role: 'User',
        status: 'Active',
        group: '',
      );
    }
    return null;
  }
}