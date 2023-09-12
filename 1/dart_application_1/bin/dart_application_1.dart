import 'dart:math';

import 'package:test/test.dart';

class Student{
  late int id;
  late String surname;
  late String middle;
  late String firstname;
  late int age;
  late String group;
  late double grade;

  Student(int id,String surname,String middle, String firstname,int age,String group,double grade){
    this.id = id;
    this.surname = surname;
    this.middle = middle;
    this.age = age;
    this.group = group;
    this.grade = grade;
    this.firstname = firstname;
  }

  int OldStudent(Student student) => this.age - student.age;
}

class StudentList{
  List<Student>? students = null;
  StudentList(List<Student> students){
    this.students = students;
  }
  void addStudent(Student student){
    students?.add(student);
  }
  List<double> getAverageGrade(){
    List<double> grade = [];
    for(int i = 0;i<students!.length;i++){
      grade.add(students![i].grade);
    }
    return grade;
}

}

  List<Student>  getStudentWithHighestGrade(List<Student> students){
    List<Student> sortstudent= students;
    sortstudent.sort((a, b) => a.grade.compareTo(b.grade));
    return sortstudent;
  }

List<Student>  Start(){
  List<Student> students = [Student(1, "Масликов", "Сергеев", "Кириллович", 22, "Т90-0-3", 5.3)];
  students.add(Student(2, "Криминалов", "Иванович", "Павел", 21, "Т90-0-3", 1.2));
  students.add(Student(3, "Гаврилова", "Алексеевна", "Виктория", 18, "Ф2-С0-Б1", 4.0));
  students.add(Student(4, "Игнатьева", "Кирилловна", "Мария", 16, "", 1.3));
  students.add(Student(5, "Кузнецова", "Тихоновна", "Лидия", 19, "К9-ГБ", 3.3));
  students.add(Student(6, "Серова", "Константиновна", "Елена", 22, "Т90-0-3", 5.9));
  students.add(Student(7, "Архипова", "Ярославовна", "Валерия", 20, "К2-ГБ", 8.8));
  students.add(Student(8, "Титова", "Михайловна", "Дарина", 44, "К1-ГБ", 1.3));
  students.add(Student(9, "Иванова", "Георгиевна", "Мария", 17, "Т90-1-1", 3.3));
  students.add(Student(10, "Емельянова", "Ивановна", "Дарина", 18, "Т90-1-1", 6.3));
  students.add(Student(11, "Сергеев", "Демидович", "Дмитрий", 18, "К9-ГБ", 5.5));
  students.add(Student(12, "Баранова", "Даниэльевна", "Вера", 22, "К2-ГБ", 3.3));
  students.add(Student(13, "Киреев", "Максимович", "Павел", 21, "Т90-0-3", 3.3));
  students.add(Student(14, "Гусева", "Данииловна", "Варвара", 21, "Т90-0-3", 10.0));
  students.add(Student(15, "Орлов", "Григорьевич", "Фёдор", 20, "Т90-0-3",7.3 ));
  students.add(Student(16, "Осипов", "Филиппович", "Иван", 20, "Т90-0-3", 3.3));
  students.add(Student(17, "Григорьева", "Никитична", "Алиса", 20, "Т90-1-1", 2.3));
  students.add(Student(18, "Зимина", "Артуровна", "Алисия", 20, "Т90-1-1", 3.3));
  students.add(Student(19, "Косарева", "Тимофеевна", "Злата", 21, "Ф2-С0-Б1", 3.1));
  students.add(Student(20, "Федорова", "Марковна", "Ясмина", 22, "К2-ГБ", 3.3));
  return students;
}


void InfoStudent({required int id,required String surname,required String middle,required String firstname,required int age,required String group,required double grade}){
    print("ID: $id\n Фамилия:$surname\n Имя:$firstname\n Отчетсво:$middle\n Возраст:$age\n Группа:$group\n Средний бал:$grade");
}

List<Student> KillStudent(int id,List<Student> students){
  students.removeAt(id);
  return students;
}

List<Student> ResetStudent(List<Student> students,int id,Student student){
  students[id] = student;
    return students;
}

void PrintStudents(List<Student> students,bool sorting){
  List<Student> sortStudent = students;
  if(sorting){
    sortStudent.sort((a, b) => a.surname.compareTo(b.surname));

  }
  for (var i = 0; i < students.length; i++) {
  InfoStudent(id: students[i].id, surname: students[i].surname, middle: students[i].middle, firstname: students[i].firstname, age: students[i].age, group: students[i].group, grade: students[i].grade);
  }
}
void main(List<String> arguments) {
  List<Student> st = Start();
  Student testST1 = Student(99, "Масликова", "Сергеевна", "Кристина", 20, "Т91-0-3", 4.3);
  Student testST2 = Student(98, "Масликов", "Сергеев", "Кириллович", 15, "Т90-1-3", 5.1);
  print(testST1.OldStudent(testST2));
  PrintStudents(st, false);
  PrintStudents(st, true);
  st = ResetStudent(st, 10, testST2);
  st = KillStudent(10, st);
  PrintStudents(st, true);
  StudentList SL = StudentList(st);
  SL.addStudent(testST1);
  List<double> grade = SL.getAverageGrade();
  for (var i = 0; i < grade.length; i++) {
    print("grade: "+grade[i].toString()+"\n");
  }
}
