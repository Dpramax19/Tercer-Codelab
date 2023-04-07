bool anyUserUnder18(Iterable<User> users) {
  return users.any((user) => user.age < 18);
}

bool everyUserOver13(Iterable<User> users) {
  return users.every((user) => user.age > 13);
}

class User {
  String name;
  int age;

  User(
    this.name,
    this.age,
  );
}

 void main(){
  Iterable<User> users = [User('Camila', 17), User('Peter', 14), User('Ana', 15), User('Pablo', 16)];
  bool AnyUserUnder18 = anyUserUnder18(users);
  bool EveryUserOver13 = everyUserOver13(users);

  for (final element in users) {
    print('${element.name} ${element.age}');
  }

  print('\nHay usuarios que tienen 17 years o menos: ${AnyUserUnder18}');
  print('Hay usuarios que tienen 14 years o mas: ${EveryUserOver13}');
  
}