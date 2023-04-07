
String singleWhere(Iterable<String> items) {
  return items.singleWhere(
      (element) => element.startsWith('M') && element.contains('a'));
}

void main(){
  Iterable<String> items = ['Manzana', 'Camisa', 'Cena']; //Un elemento satisface la condicion del predicado
  String resultado = singleWhere(items);
  print(resultado); 
}

