class Pie {
  static int counter = 0;

  int id;

  Pie() : id = counter++;
}

void main(List<String> args) {
  print(Pie().id);
  print(Pie().id);
  print(Pie().id);
  print(Pie().id);
  print(Pie().id);
  print(Pie().id);
  print(Pie().id);
  print(Pie().id);
}
