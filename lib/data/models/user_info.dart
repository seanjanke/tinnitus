class AppUser {
  final int id;
  final String name;
  final int age;

  AppUser({required this.id, required this.name, required this.age});

  static AppUser empty() {
    return AppUser(id: 0, name: '', age: 0);
  }
}
