import 'class_detial/model/user_model.dart';
import 'class_detial/model/user_model_2.dart';

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

  final user3 = User('aa', 159, age: 13, id: '12');

  print(user3.userCode);

  print(user1.name);


  // musteri son gelen kisinin citysinine gore kapmanya yapacak eger istanbul ise

  if (user3.city == null) {
    print('musteri sehir bilgisini vermemiz');
  } else {
    if (user3.city!.isEmpty) {
      print('okok');
    }

    if (user3.city == 'istanbul') {
      print('tebrikler kazandiniz');
    }
  }

  // musteri idsi 1 2 olana indirim yap
  if (user3.isSpecialUser('12')) {
    user3.money += 5;
    print('para eklendi');
  }

  //

  User2 newUser2 = User2('vb', 15, age: null, city: '');
  newUser2.money += 5;
  newUser2.money = null;

  print(newUser2.toString());
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
