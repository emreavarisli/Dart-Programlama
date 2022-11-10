void main() {
  String userName = "veli";

  final int bankMoney = 100;
  const String bankName = "VB Bank";

  var userName2 = 'veli2';
  var userName2Money = 15;
  
  userName2Money -= 10;

  // Bank name = "VB BANK"
  // Bank user 1 = "bank1musteri"
  // bank user 1 in parasi 100.00

  // yeni bir musteri gelecek adi bank2musteri
  // yeni bankaya gelenden bu bank user1 parasini cikartip ekrana gosterelim

  // camel case, kebap case, upper case
  // kirmiziaraba, kirmiziAraba, KirmiziAraba, KIRMIZI_ARABA

  const String bankNameSpecial = "VB Bank";
  const String user1 = "Bank 1 musteri";
  const double user1Money = 100.00;

  const String user2 = "Bank 2 musteri";
  int user2Money = 500;

  user2Money = user2Money - user1Money.toInt();

  print("User 2 money: $user2Money");

}