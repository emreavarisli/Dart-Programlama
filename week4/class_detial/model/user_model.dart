// adi olmak zorunda
// parasi olmak zorunda
// yasini vermeyebilir
// citiysini vermeyebilir
// city yoksa ist say
// id degisine sadece bu sinif icinden erisebilsin
class User {
  // ozellikleri neler
  late final String name;
  late int money;
  late final int? age;
  late final String? city;

  late final String userCode;

  late final String _id;

  User(String name, int money, {required String id, String? city, int? age}) {
    this.name = name;
    this.money = money;
    this.age = age!;
    this.city = city!;
    _id = id;
    userCode = (city ?? 'ist') + name;
  }

  bool isSpecialUser(String id) {
    return _id == id;
  }

  //bool isEmptyId(){
  // return _id.isEmpty; }

  bool get isEmptyId => _id.isEmpty;
}