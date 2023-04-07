Iterable<String> getNameAndAges(Iterable<User> users) {
  return users.map((user) => '${user.name} is ${user.age}');
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
    var users = [User('Camila', 17), User('Ada', 25), User('Ana', 24), User('Amy', 22)];
    var NameAndAges = getNameAndAges(users);

     for (final elements in NameAndAges){
     print(elements);
  }

}