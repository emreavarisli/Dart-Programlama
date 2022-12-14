// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'class_singleton.dart';

void main(List<String> args) {
  final model = CarModel(category: CarModels.bmw, name: 'bmw x5', money: 1412, isSecondHand: false);

  final carItems = [
    CarModel(category: CarModels.bmw, name: 'bmw x5', money: 12, isSecondHand: false),
    CarModel(category: CarModels.toyota, name: 'toyota 234234', money: 45),
    CarModel(category: CarModels.yamaha, name: 'yamaha 3324', money: 44, isSecondHand: false),
    CarModel(category: CarModels.bmw, name: 'bmw x5', money: 33),
    CarModel(category: CarModels.toyota, name: 'toyota 0ye', money: 55, isSecondHand: false),
  ];

  final resultCount = carItems.where((element) => element.isSecondHand == true).length;
  print(resultCount);

  final newCar = CarModel(category: CarModels.bmw, name: 'bmw x5', money: 33);

  final isHaveCar = carItems.contains(newCar);
  if (isHaveCar) {
    print('elimizde var');
  } else {
    print('patron yok alalim');
  }

  final resultBmwMore20 = carItems.where((element){
    return element.category == CarModels.bmw && element.money > 20;
  }).join();

  print(resultBmwMore20);

  final  carNames = carItems.map((e) => e.name).join(',');
  print(carNames);

  bool isHaveCarMercedes = false;
  try {
    final mercedesCar = carItems.singleWhere((element) => element.category == CarModels.mercedes);
    print(mercedesCar);
    isHaveCarMercedes = true;
  } catch (e) {
    print('araba yok');
    isHaveCarMercedes = false;
  } finally {
    print('abi bu islem agir oldu bidaha sorma $isHaveCarMercedes');
  }

  final index = carItems.indexOf(newCar);
  print(index);
  final _mercedes = CarModel(category: CarModels.mercedes, name: 'merer', money: 12312);
  carItems.add(_mercedes);
  carItems.sort((first, second) => second.money.compareTo(first.money));

  final users = carItems.expand((element) => element.users).toList();
  calculateToUser(carItems);
  carItems.remove(_mercedes);
  carItems.removeWhere((element) => element.category == CarModels.bmw || element.money < 30);
  print(carItems);
}

void calculateToUser(List<CarModel> items){
  // itemleri duzelt bmw olanlari yamaha yap
  final _items = [...items.toList()];
  final newItems = items.map((CarModel e) {
    return CarModel(category: e.category == CarModels.bmw ? CarModels.yamaha : e.category, 
    name: e.name, 
    money: 
    e.money,
    isSecondHand: false);
  }).toList();

  print(newItems);
}
 

// benim bir arabalar sinifim olacak
// arabalarin modeli, ismi, parasi kesin oalcak sehri olmayacak, ikinci el durumu eger musteri soylemezse
// her urun ikinci el kabul edilecek

// benim 5 tane arabam olacak
// yeni bir araba geldi bu bizde var gibi hissediyorum dogru mu

// bana bmw olan ve moneysi 20den buyuk olan arabalarimizi soyler misin

//ya acaba sadece isimleri yan yana g??sterir misin

// benim elimde mercedes var m??

// su yeni gelen arabaya var demistin bunun kacini sirada soyler misin

// ya ben yeni araba ald??m mercedes

// bana arabalarimi kucukten buyuge dogru s??ralar m??s??n

// ben butun arabalarmi user yapicam

// ya bu son ekleneni silelim
// bmw olan ve 30dan dusuk olanlari silelim

class CarModel {
  CarModels category;
  final String name;
  final double money;

  List<User> users;
  String? city;
  bool isSecondHand; 
  
  CarModel({
    required this.category,
    required this.name,
    required this.money,
    this.city,
    this.isSecondHand = true,
    this.users = const [],
  });

  @override
  bool operator ==(covariant CarModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.category == category &&
      other.name == name &&
      other.money == money &&
      other.city == city &&
      other.isSecondHand == isSecondHand;
  }

  @override
  int get hashCode {
    return category.hashCode ^
      name.hashCode ^
      money.hashCode ^
      city.hashCode ^
      isSecondHand.hashCode;
  }

  @override
  String toString(){
    return '$name - $money';
  }
}

enum CarModels {bmw, yamaha, toyota, mercedes}