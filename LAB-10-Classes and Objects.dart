class Person {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);
}

void main() {
  // Creating an object p1 of class Person
  Person p1 = Person("feven", 22, "123 Street, City");

  // Accessing attributes of object p1
  print("Initial Details:");
  print("Name: ${p1.name}");
  print("Age: ${p1.age}");
  print("Address: ${p1.address}");

  // Modifying attributes of object p1
  p1.age = 31;
  p1.address = "456 Avenue, Town";

  // Accessing modified attributes of object p1
  print("\nModified Details:");
  print("Name: ${p1.name}");
  print("Age: ${p1.age}");
  print("Address: ${p1.address}");
}
