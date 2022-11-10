// ignore_for_file: public_member_api_docs, sort_constructors_first
void main() {
  final userNormal = User(name: 'vb', money: 15);
  final userBank = BankUser(name: 'name', money: 155, bankingCode: 123);
  final userSpecial = SpecialUser(name: 'asdas', money: 12312, bankingCode: 123123, discount: 30);

  userNormal.sayMoneyWithCompanyName();
  userBank.sayMoneyWithCompanyName();
  userSpecial.sayMoneyWithCompanyName();

  print(userSpecial.calculaterMoney);
  print(userSpecial.money);

}

// paralarini gorebilmelerini istiyorum benim banka ismimle birlikte


abstract class IUser {
  final String name;
  final int money;
  
  IUser({required this.name, required this.money});
  void sayMoneyWithCompanyName(){
    print('Ahmet - $money paraniz vardir.');
  }
}

class User extends IUser{
  final String name;
  final int money;

  User({required this.name, required this.money,}) : super(name: 'name', money: money);

}

class BankUser extends IUser{
  final int bankingCode;

  BankUser({String? name, int? money, required this.bankingCode}) : super(name: 'name', money: bankingCode);

  void bankSpecialLogic(){
    print(money);
  }
}

class SpecialUser extends IUser{
  final String name;
  final int money;
  final int bankingCode;
  late final int _discount;

  SpecialUser({required this.name, required this.money, required this.bankingCode, required int discount}) : super(name: 'name', money: money){
    _discount = discount;
  }

  int get calculaterMoney => (money ~/ _discount);
  }

