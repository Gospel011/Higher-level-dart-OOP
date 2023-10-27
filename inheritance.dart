//* THE PERSON CLASS
import 'dart:math';

class Person {
  final String name;
  final String locality;
  const Person({required this.name, required this.locality});

  void showDetails() {
    print({'name': name, 'age': locality});
  }
}

//* THE STUDENT CLASS EXTENDS THE PERSON CLASS AS A STUDENT IS ALSO A PERSON

class Student extends Person {
  final String school;

  //? Since the superclass 'Person' is instantiated with name and locality,
  //? any subclass would also have to accept the name and locality in their 
  //? constructor and then pass it to the superclass to be instantiated.
  //? It can be done by
  //? 1.) Student({required name, required locality, required this.school})
  //?          : super(name: name, locality: locality)
  
  //?                            OR

  //? Student({required super.name, required super.locality, required this.school});


  const Student(
      {required super.name, required super.locality, required this.school}); 

  void showStudentDetails() {
    super.showDetails();
    print({'school': school});
  }

  void welcome() {
    print(
        'Welcome ${name}, to ${school}. We know you\'re from ${locality}, nevertheless, you can feel completely at home here.');
  }
}

//* THE STUDENT CLASS CAPTAIN CLASS EXTENDS THE STUDENT CLASS WHICH EXTENDS THE PERSON CLASS

class ClassCaptain extends Student {
  final int classId;
  final int id = Random().nextInt(1000000);

  ClassCaptain(
      {required super.name,
      required super.locality,
      required super.school,
      required this.classId});

//? CREATING A CLASS CAPTAIN FROM A STUDENT OBJECT
  ClassCaptain.fromStudent(
      {required Student student, required this.classId})
      : super(
            name: student.name,
            locality: student.locality,
            school: student.school);

  void introduceClassCaptain() {
    print(
        'The class captain of class $classId is $name with student id of $id. He hails from $locality and would be called by $school for matters regarding class $classId.');
  }
}
