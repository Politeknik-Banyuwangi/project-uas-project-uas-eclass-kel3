class Users {
  late final String id,
      pictures,
      name,
      email,
      username,
      password,
      last_login,
      created_at,
      update_at;

  Users(String email, username, password) {
    this.id = "14";
    this.name = "Siswa 1";
    this.email = "siswa@gmail.com";
    this.username = "215211";
    this.password = "215211";
  }

  String errorUsernameMessage(String username) {
    if (username != this.username) {
      return "Username tidak ditemukan";
    } else {
      return "Successful";
    }
  }

  String errorPasswordMessage(String password) {
    if (password != this.password) {
      return "password salah";
    } else {
      return "Successful";
    }
  }
}
