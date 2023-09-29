import 'dart:math';
import 'dart:convert';
import 'dart:io';
import 'package:test/test.dart';

class Student{
  late int id;
  late String surname;
  late String middle;
  late String firstname;
  late int age;
  late String group;
  late double grade;


  Student({required int id ,required String surname,required String middle,required  String firstname,required int age,required String group,required double grade}){
    this.id = id;
    this.surname = surname;
    this.middle = middle;
    this.age = age;
    this.group = group;
    this.grade = grade;
    this.firstname = firstname;
  }

}

class StudentList{
  List<Student>? students = null;

  StudentList(List<Student> students){
    this.students = students;
  }
  
  void addStudent(Student student){
    students?.add(student);
  }

  double getAverageGrade(){
    double grade = 0;
    for(int i = 0;i<students!.length;i++){
      grade+=students![i].grade;
    }
    grade/=students!.length;
    return grade;
  }

  int LenghtStudent(){
    return students!.length;
  }
}

Student  getStudentWithHighestGrade({required List<Student>? students, bool Highest = true}){
    List<Student> sortstudent= students!;
    sortstudent.sort((a, b) => a.grade.compareTo(b.grade));
    if(Highest){
      return sortstudent.first;
    }
    else{
      return sortstudent.last;
    }
  }

List<Student>  Start(){
  List<Student> students = [Student(id:1,surname: "Масликов",middle: "Сергеев",firstname: "Кириллович",age: 22,group: "Т90-0-3",grade:5.3)];
  students.add(Student(id:2,surname:"Криминалов",middle:"Иванович",firstname:"Павел",age:  21,group:"Т90-0-3",grade: 1.2));
  students.add(Student(id:3,surname:"Гаврилова",middle:"Алексеевна",firstname:"Виктория",age:  18,group:"Ф2-С0-Б1",grade: 4.0));
  students.add(Student(id:4,surname:"Игнатьева",middle:"Кирилловна",firstname:"Мария",age:  16,group:"К9-ГБ",grade: 1.3));
  students.add(Student(id:5,surname:"Кузнецова",middle:"Тихоновна",firstname:"Лидия",age:  19,group:"К9-ГБ",grade: 3.3));
  students.add(Student(id:6,surname:"Серова",middle:"Константиновна",firstname:"Елена",age:  22,group:"Т90-0-3",grade: 5.9));
  students.add(Student(id:7,surname:"Архипова",middle:"Ярославовна",firstname:"Валерия",age:  20,group:"К2-ГБ",grade: 8.8));
  students.add(Student(id:8,surname:"Титова",middle:"Михайловна",firstname:"Дарина",age:  44,group:"К1-ГБ",grade: 1.3));
  students.add(Student(id:9,surname:"Иванова",middle:"Георгиевна",firstname:"Мария",age:  17,group:"Т90-1-1",grade: 3.3));
  students.add(Student(id:10,surname:"Емельянова",middle:"Ивановна",firstname:"Дарина",age:  18,group:"Т90-1-1",grade: 6.3));
  students.add(Student(id:11,surname:"Сергеев",middle:"Демидович",firstname:"Дмитрий",age:  18,group:"К9-ГБ",grade: 5.5));
  students.add(Student(id:12,surname:"Баранова",middle:"Даниэльевна",firstname:"Вера",age:  22,group:"К2-ГБ",grade: 3.3));
  students.add(Student(id:13,surname:"Киреев",middle:"Максимович",firstname:"Павел",age:  21,group:"Т90-0-3",grade: 3.3));
  students.add(Student(id:14,surname:"Гусева",middle:"Данииловна",firstname:"Варвара",age:  21,group:"Т90-0-3",grade: 10.0));
  students.add(Student(id:15,surname:"Орлов",middle:"Григорьевич",firstname:"Фёдор",age:  20,group:"Т90-0-3",grade:7.3 ));
  students.add(Student(id:16,surname:"Осипов",middle:"Филиппович",firstname:"Иван",age:  20,group:"Т90-0-3",grade: 3.3));
  students.add(Student(id:17,surname:"Григорьева",middle:"Никитична",firstname:"Алиса",age:  20,group:"Т90-1-1",grade: 2.3));
  students.add(Student(id:18,surname:"Зимина",middle:"Артуровна",firstname:"Алисия",age:  20,group:"Т90-1-1",grade: 3.3));
  students.add(Student(id:19,surname:"Косарева",middle:"Тимофеевна",firstname:"Злата",age:  21,group:"Ф2-С0-Б1",grade: 3.1));
  students.add(Student(id:20,surname:"Федорова",middle:"Марковна",firstname:"Ясмина",age:  22,group:"К2-ГБ",grade: 3.3));
  return students;
}
void InfoStudent({required int id,required String surname,required String middle,required String firstname,required int age,required String group,required double grade}){
    print("ID: $id\n Фамилия:$surname\n Имя:$firstname\n Отчетсво:$middle\n Возраст:$age\n Группа:$group\n Средний бал:$grade");
}
void InSt(Student student){
  int ids = student.id;
  String surnames = student.surname;
  String firstnames = student.firstname;
  String middles = student.middle;
  int ages = student.age;
  String groups = student.group;
  double grade = student.grade;
    print("ID: $ids\n Фамилия:$surnames\n Имя:$firstnames\n Отчетсво:$middles\n Возраст:$ages\n Группа:$groups\n Средний бал:$grade");
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
late StudentList st;
void main(List<String> arguments) {
  st = StudentList(Start());
  MainMenu();
}
void MainMenu(){
  bool menu = true;
  while (menu){
    print("Меню:"+
    "\n1-Добавить студента"+
    "\n2-Удалить студента"+
    "\n3-Редактировать данные студента"+
    "\n4-Список студентов"+
    "\n5-Студент с наивысшим баллом"+
    "\n6-Студент с наименьшим баллом"+
    "\n7-Средний балл всех студентов"+
    "\n8-Фильтрация"+
    "\n9-выход");
    int a = int.parse(stdin.readLineSync().toString());
    switch(a){
      case 1:
        print("id от 0 до "+st.LenghtStudent().toString());
        int b = int.parse(stdin.readLineSync().toString());
        if(b<st.LenghtStudent() && b>-1){
          MenuResetStudent(idstudent:b,st:st.students!);
        }
        break;
      case 2:
        print("id от 0 до "+st.LenghtStudent().toString());
        int b = int.parse(stdin.readLineSync().toString());
        if(b<st.LenghtStudent() && b>-1){
          KillStudent(b, st.students!);
        }
        break;
      case 3:
          MenuAddStudent(st:st);
        break;
      case 4:
          PrintStudents(st.students!, false);
        break;
      case 5:
          InSt(getStudentWithHighestGrade(students: st.students!,Highest: true));
        break;
      case 6:
          InSt(getStudentWithHighestGrade(students: st.students!,Highest: false));
        break;
      case 7:
        print(st.getAverageGrade().toString());
        break;
      case 8:
        PrintStudents(st.students!,true);
        break;
      case 9:
      menu = false;
        break;
      case _:
        break;
    }
  }
}
void MenuResetStudent({required int idstudent,required List<Student> st}){
  print("Введите id, Фамилия, Отчество, Имя, возраст, группу, средний бал: (через enter)");
    int id = int.parse(stdin.readLineSync().toString());
    String surname = stdin.readLineSync().toString();
    String middle = stdin.readLineSync().toString();
    String firstname = stdin.readLineSync().toString();
    int age = int.parse(stdin.readLineSync().toString());
    String group = stdin.readLineSync().toString();
    double grade = double.parse(stdin.readLineSync().toString());
    Student student = Student(id: id, surname: surname, middle: middle, firstname: firstname, age: age, group: group, grade: grade);
    st[idstudent] = student;
}
void MenuAddStudent({required StudentList st}){
  print("Введите id, Фамилия, Отчество, Имя, возраст, группу, средний бал: (через enter)");
    int id = int.parse(stdin.readLineSync().toString());
    String surname = stdin.readLineSync().toString();
    String middle = stdin.readLineSync().toString();
    String firstname = stdin.readLineSync().toString();
    int age = int.parse(stdin.readLineSync().toString());
    String group = stdin.readLineSync().toString();
    double grade = double.parse(stdin.readLineSync().toString());
    Student student = Student(id: id, surname: surname, middle: middle, firstname: firstname, age: age, group: group, grade: grade);
    st.addStudent(student);
}