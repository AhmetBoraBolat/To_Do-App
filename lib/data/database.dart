import 'package:hive/hive.dart';

class ToDataBase {
  List toDoList = [];
  // referance our box
  final _myBox = Hive.box('mybox');

// run this method if this is the 1st time ever opening this app -> ilk kez açıldığında çalıştır
  void createInitialData() {
    toDoList = [
      ['Ödev Yap', false],
      ['Ders yap', true],
    ];
  }

  // load the data from database
  void loadData() {
    toDoList = _myBox.get('TODOLIST');
  }

  //update the database
  void updateDataBase() {
    _myBox.put('^TODOLIST', toDoList);
  }
}
