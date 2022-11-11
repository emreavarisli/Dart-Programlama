// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  final newProduct = Product.money;

  calculatorMoney(Product.money ?? 0);

  productNameChange();

  calculatorMoney(Product.money ?? 0);

  // user classini kullanarak product yapmak istiyorum

  final user1 = User('veli', 'ad');

  final newProduct2 = Product(user1.product);
  final newProduct3 = Product.fromUser(user1);

  productNameChange();
}

void calculatorMoney(int money) {
  if (money > 5) {
    print('5 tl daha ekledik');
    Product.incerementMoney(5);
    print(Product.money);
  }
}

void productNameChange() {
  Product.money = null;
}

class Product {
  static int? money = 10;
  String name;

  Product(this.name);

  Product.veli([this.name = 'veli']);
 
 factory Product.fromUser(User user) {
  return Product(user.name);
 }

  static const companyName = "VB BANK";

  static void incerementMoney(int newMoney) {
    if (money != null) {
      money = money! + newMoney;
    }
  }
}

class User {
  final String name;
  final String product;

  User(this.name, this.product);
}

