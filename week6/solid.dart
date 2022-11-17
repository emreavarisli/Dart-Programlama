// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {

  IDatebase database = SQL();
  database = Mongo();
  database.write();
}

class UserManager {
  String name;
  UserManager({
    required this.name
  });
  void changeUserName(String name) {
    this.name = name;
  }
}

class UserLocalization {
    final UserManager manager;
  
  UserLocalization({required this.manager});

    void updateNameAndLocalization() {
      manager.changeUserName('a');
      changeLocalization();
    }

    void changeLocalization() {
      print('object');
    }
  }

class Product {
    final String name;
    final String money;
    Product({required this.name, required this.money});
  }

  class ProductCategories extends Product {
  ProductCategories({required super.name, required super.money});
    
    final String category = ";l";
  }

  abstract class IDatebase {
    void write();
  }

  class SQL extends IDatebase {
  @override
  void write() {
  }
  }

  class Mongo extends IDatebase {
  @override
  void write() {
  }
  }

  abstract class IUserOperation with IUserLocation, ILanguage {
    void write();
    void read();
    void delete();
  }

  abstract class IUserLocation {
    void locationChange();
  }

  abstract class ILanguage {
    void language();
  }

  class UserLocation extends IUserLocation {
  @override
  void locationChange() {}
  }

  abstract class ICameraManager {
    void readQR();
  } 

  class DeviceCameraManager extends ICameraManager {
  final IphoneCameraRead iphoneCameraRead;

  DeviceCameraManager(this.iphoneCameraRead);
  @override
  void readQR() {}
  }

  class IphoneCameraRead extends ICameraManager {
  @override
  void readQR() {}
  }