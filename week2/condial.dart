void main() {
  int money = 15;
  String userName = "veli";
  // bool => 0, 1
  bool isCustomerRich = true;
  print('$money' + userName);

  if (money > 10) {
    print("Sen zenginsin abii");
  } else {
    print('gerekirse simit yeriz');
  }

  money = money - 10;

  if (money > 10) {
    print("Sencok zenginsin abii");
  } else {
    print('abi burada ne isin var');
  }

  // musteri bankaya gelir ve 10 tlsi vardir ve bir sorgu yapar
  // sorgu sonucu 20 tlsi alinir
  // eger kalan parasi sifirdan kucukse baankadan kovulur
  // eger diyor adamin parasi banking costa yetmiyorsa bankaya almayin

  int newCustomerMoney = 0;
  const int bankingConst = 5;
  const int bankingcostGeneral = 20;

  if (newCustomerMoney > bankingConst) {
    print("hosgeldiniz beyfendi");
    newCustomerMoney = newCustomerMoney - bankingcostGeneral;
  } else if(newCustomerMoney > 0){
    print('beyfendi lutfen sira aliniz');
  } else {
    print('beyfendi kredinizi odeyin');
  } 

  // bir magazaya isim verilecek
  // ver ornek isimler toplanir
  // ornek isimler: ahmet, mehmet, veli, kx, x
  // magaza der ki ben sadece karakter uzunlugu iki veya daha alti olanlari gormek istiyorum
  // bu kosula uyanlari yan yana gormek istiyorum aralarinda bosluk olacak

  final String ahmetCompany = "Ahmet";
  final String mehmetCompany = "Mehmet";
  final String veliCompany = "Veli";
  final String kxCompany = "kx";
  final String xCompany = "x";

  const int companyLength = 5;
  String result = "";

  if (ahmetCompany.length > companyLength) {
    result = result + ahmetCompany;
  }
  if (mehmetCompany.length > companyLength) {
    result = result + mehmetCompany;
  }
  if (veliCompany.length > companyLength) {
    result = result + veliCompany;
  }
  if (kxCompany.length > companyLength) {
    result = result + kxCompany;
  }
  if (xCompany.length > companyLength) {
    result = result + xCompany;
  }
  
  if (result.isEmpty) { //result.length <= 0
    print("patron bulamadik");
  } else {
    print(result);
  }

}