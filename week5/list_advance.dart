// ignore_for_file: public_member_api_docs, sort_constructors_first
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
}

 

// benim bir arabalar sinifim olacak
// arabalarin modeli, ismi, parasi kesin oalcak sehri olmayacak, ikinci el durumu eger musteri soylemezse
// her urun ikinci el kabul edilecek

// benim 5 tane arabam olacak
// yeni bir araba geldi bu bizde var gibi hissediyorum dogru mu

// bana bmw olan ve moneysi 20den buyuk olan arabalarimizi soyler misin

class CarModel {
  final CarModels category;
  final String name;
  final double money;
  String? city;
  bool isSecondHand; 
  
  CarModel({
    required this.category,
    required this.name,
    required this.money,
    this.city,
    this.isSecondHand = true,
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

enum CarModels {bmw, yamaha, toyota}