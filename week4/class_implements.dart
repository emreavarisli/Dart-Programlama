// ignore_for_file: public_member_api_docs, sort_constructors_first
void main() {}

abstract class IStudent {
  final String name;
  final String age;
  
  int? schoolId;

  void saySomething(){
    print(age);
  }

  IStudent({
    required this.name,
    required this.age,
  });

}

class Student implements IStudent {
  final String name;
  final String age;

  Student({required this.name, required this.age});
  
  @override
  void saySomething() {
  }
  
  @override
  int? schoolId;
  
}

class Student2 implements IStudent{
  final String name;
  final String age;
  
  Student2({required this.name, required this.age});
  
  @override
  void saySomething() {
    print('a');
  }
  
  @override
  int? schoolId;
  
}
