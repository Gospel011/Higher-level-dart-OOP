import 'inheritance.dart';
import 'user.dart';

void main() {
  const p1 = Person(name: 'Ndema Emmanuel', locality: 'Imo State');
  const Student student1 = Student(
      name: 'Onyedika Franklin', locality: 'Anambra State', school: 'FUTO');

  ClassCaptain classCaptain1 = ClassCaptain(
      name: 'Nwoko Confidence',
      locality: 'Abia State',
      school: 'FUTO',
      classId: 67);

  ClassCaptain classCaptain2 =
      ClassCaptain.fromStudent(student: student1, classId: 54);

  //* INITIALIZE A USER OBJECT
  User user1 =
      User(name: 'Emmanuel Echem', email: 'echememmanuel@gmail.com', age: 24);

  user1.signInTo('Unlimited');

  // p1.showDetails();
  // student1.showStudentDetails();
  // student1.welcome();
  // classCaptain1.introduceClassCaptain();
  classCaptain2.introduceClassCaptain();
}
