class AuthService {
  static final Map<String, String> _users = {};

  static void register(String username, String password) {
    _users[username] = password;
  }

  static bool login(String username, String password) {
    return _users[username] == password;
  }
}
