class Student {
  String name;
  List<int> marks;

  Student(this.name, this.marks);

  double calculateAverageMark() {
    if (marks.isEmpty) {
      return 0.0;
    }

    int sum = marks.reduce((value, element) => value + element);
    return sum / marks.length;
  }
}

void main() {
  Student student1 = Student('John', [85, 92, 78, 90]);
  Student student2 = Student('Alice', []);

  double averageMark1 = student1.calculateAverageMark();
  double averageMark2 = student2.calculateAverageMark();

  print('${student1.name}\'s Average Mark: $averageMark1');
  print('${student2.name}\'s Average Mark: $averageMark2');
}