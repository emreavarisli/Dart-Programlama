void main() {
  // musteri adi var, parasi var, yasi var, bla bla

  final int customerMoney = 50;
  final String customerName = "veli";
  final int customerAge = 13;

  // bu musterinin yasi 10dan buyukse bir islem yap

  controlCustomerAge(customerMoney);

  // yeni musteri geliyor yine ayni alinanlar

  final int customerMoney2 = 50;
  final String customerName2 = "veli";
  final int customerAge2 = 13;

  controlCustomerAge(customerMoney2);

  // unutmusuz musterilerin sehirleri

  // ---
  // ya ben musterileri gruplasam, yeni bir kumelesem ve bunlar ayni ozelllikleri ayni sekilde bana gosterilse
  
  int? newMoney;
  if (newMoney != null) {
    print(newMoney + 50);
  } else {
    print(10 + 10);
  }

  // musteri diyorki ya bak bizim bir servisimiz var paralari veren eger bir cevap gelmezse sen ana deger olarak 10 ata
  //print(newMoney! + 10);
  //print(newMoney + 10);

  // bankaya 3 tane musteri gelir birinin 100tlsi var digerinin hesabi hic yok digerinin 0tlsi var
  // hesabi olmayana gelin hesap acalim, 0tlsi olani kov, 100tlsi olana musterim hosgeldin

  // yeni bir method olsun bu methoda hesabi olmayanlari ve parasi olmayanlari yok sayalim
  // para verdiklerimizi ekranda true yazalim

  List<int?> customerMoneys = [100, null, 0];

  for (var item in customerMoneys) {
    if (item != null) {
      if (item > 0) {
        print('beyfendi');
      } else {
        print('byy');
      }
    } else {
      print('haydi hesap acalim');
    }

    // ----
    bool result = controlMoney(item) == null ? false : true;
    print(result);
  }

  print('--------------' * 10);

  int customerMoneyX = 15;
  User user1 = User('vb', 15, age: 21, city: 'aaa', id: '123');
  //User user2 = User('vb', 15, null, null);

  final user3 = User('aa', 159, age: 13, id: '123');

  print(user3.userCode);

  print(user1.name);

  print(user3._id);

  // musteri son gelen kisinin citysinine gore kapmanya yapacak eger istanbul ise

  if (user3.city == null) {
    print('musteri sehir bilgisini vermemiz');
  } else {
    if (user3.city.isEmpty) {
      print('okok');
    }

    if (user3.city == 'istanbul') {
      print('tebrikler kazandiniz');
    }
  }
}

int? controlMoney(int? money){
  if (money != null && money > 0) {
    return money;
    }
}

  // if (money == null || money > 0) {
  //  return null;
  //  }

void controlCustomerAge(int value){
  if (value > 10) {
    print('alisveris yapabilirsiniz');
  } else {
    print('alisveris yapamaz');
  }
}

// adi olmak zorunda
// parasi olmak zorunda
// yasini vermeyebilir
// citiysini vermeyebilir
// city yoksa ist say
// id degisine sadece bu sinif icinden erisebilsin
class User{
  // ozellikleri neler
  late final String name;
  late final int money;
  late final int age;
  late final String city;

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
}

class User2{
  // ozellikleri neler
  final String name;
  final int money;
  final int age;
  final String city;

  late final String userCode;

  User2(this.name, this.money,{required this.age, required this.city}){

  }
  }
