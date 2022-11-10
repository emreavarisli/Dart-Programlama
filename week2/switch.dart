void main() {
  final int classDegree = 2;
  bool isSucess = false;

  // 2 ise ekrana bravo
  // 1 ise olur
  //0 ise yeterli
  // diger durumlarda basarisiz

  const int succesValueHigh = 2;

  switch (classDegree) {
    case succesValueHigh:
    print('bravo');
    isSucess = true;
    break;
    case 1:
    print('olur');
    isSucess = true;
    break;
    case 0:
    print('yeterli');
    isSucess = true;
    break;
    default:
    print('basarisiz');
    isSucess = false;
  }
  print('beyfendi cocugunuz sonucu: $isSucess');

  // magazaya gelen isimlerden veli olan olursa print bravoo yaz
  // ekin

  String name = "asdasd";

  const String speacialUser1 = "veli";
  const String speacialUser2 = "ahmet";

  switch(name) {
    case "veli":
    case "ekin":
    print('bravo');
    break;
    default:
    print('sorunlu');
  }

  switch(name) {
    case speacialUser1:
    case speacialUser2:
    print('bravo');
    break;
    default:
    print('sorunlu');
  }

}