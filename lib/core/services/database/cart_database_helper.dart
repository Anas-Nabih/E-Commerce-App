import 'package:e_commerse_app_uising_getx/res/storge/preference/const.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class CartDatabaseHelper{

  CartDatabaseHelper._();

  CartDatabaseHelper db = CartDatabaseHelper._();

  static Database _database;

  Future<Database> get dataBase async{
    if(_database !=null) return _database;
    
    _database = await initDB();
    return _database;
  }

  initDB() async{
    String path = join(await getDatabasesPath(), 'CartProducts.db');

    return await openDatabase(path,version: 1, onCreate: (Database db, int version)async{
      await db.execute(''' 
      CREATE TABLE ${Const.tableCartProduct} (
      ${Const.columnName} TEXT NOT NULL,
      ${Const.columnName} TEXT NOT NULL,
      ${Const.columnPrice} TEXT NOT NULL,
      ${Const.columnQuantity} INTEGER NOT NULL,
      )
      ''');
    });
  }
}