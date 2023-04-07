Iterable<EmailAddress> parseEmailAddresses(Iterable<String> strings) {
  return strings.map((s) => EmailAddress(s));
}

bool anyInvalidEmailAddress(Iterable<EmailAddress> emails) {
  return emails.any((email) => !isValidEmailAddress(email));
}

Iterable<EmailAddress> validEmailAddresses(Iterable<EmailAddress> emails) {
  return emails.where((email) => isValidEmailAddress(email));
}

bool isValidEmailAddress(email){
  return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);
}

class EmailAddress {
  final String address;

  EmailAddress(this.address);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is EmailAddress &&
              runtimeType == other.runtimeType &&
              address == other.address;

  @override
  int get hashCode => address.hashCode;

  @override
  String toString() {
    return 'EmailAddress{address: $address}';
  }
}

void main(){
  final String address = 'test@prueba.com';
  print(isValidEmailAddress(address));

  if (isValidEmailAddress(address) == true){
    print('El email es valido: $address');
  }
  else{
    print('Email invalido, ingrese un email valido');
  }
}