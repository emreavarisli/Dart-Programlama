void main() {
  // musterinin adini tut
  // musterinin parasini ogren
  // musteriye merhaba diyip parasini soyle
  // bizim bankaya geldigi için parasina +5 TL ekle
  // ya acaba 10 yapabilir miyiz

  print("Merhaba" + '${25 + 5}');

  int userMoney = 25;
  String userName = "Veli";
  userMoney = userMoney + 5;

  print("Merhaba $userName $userMoney");

  print("-------------");
  userMoney = userMoney - 10;
  print('Paraniz deger kayetti $userMoney');

  userMoney = userMoney + 5;
  userMoney += 5;

  userMoney = userMoney ~/ 2; // sayiyi bol ve alta degeri buna ata

  double ahmetMoney = 15.2;
  ahmetMoney = ahmetMoney / 2;
  print('ahmet bey paraniz uctu $ahmetMoney');
  print('veli bey paraniz uctu $userMoney');


}