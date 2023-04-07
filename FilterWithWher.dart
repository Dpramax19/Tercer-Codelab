Iterable<User> filterOutUnder21(Iterable<User> users) {
  return users.where((user) => user.age >= 21);
}

Iterable<User> findShortNamed(Iterable<User> users) {
  return users.where((user) => user.name.length <= 3);
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
  var userAge = filterOutUnder21(users);
  var userNamed = findShortNamed(users);
 
  for (final elements in userAge){
    print('Edades de Usuarios que tienen 21 years o mas: ${elements.age}');
  }
  
   for (final elements in userNamed){
    print('Usuarios con nombres de longitud 3 o menos: ${elements.name}');
  }

}