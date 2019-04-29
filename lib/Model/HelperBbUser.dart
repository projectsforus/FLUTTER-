import 'dart:async';
import 'dart:io';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:wahb/Model/UserModel.dart';


class DatabaseHelper{

  static Database _db; // اسم الداتا

  final String userTable = 'userTable';  //اسم الجدول

  final String columnId = 'id';  //اسم العمود

  final String columnUserName = 'username'; //اسم العمود

  final String columnPassword = 'password'; //اسم العمود

  final String columnEmail = 'email';  //اسم العمود

  final String columnPhoto = 'photo';  //اسم العمود


  // للحصول علي مخزن البيانات
  Future<Database> get db async{

    if(_db != null){

      return _db;

    }

    _db = await intDB();

    return _db;

  }




// لتخزين وتعريف ملف البيانات في ملفات التطبيق علي الهاتف و معرفة مسارها
  intDB() async{

    Directory documentDirectory = await getApplicationDocumentsDirectory();

    String path = join(documentDirectory.path , 'mydb.db');

    var myOwnDB = await openDatabase(path,version: 1,

        onCreate: _onCreate);

    return myOwnDB;

  }


// لانشاء صف جديد في مجزن البيانات
  void _onCreate(Database db , int newVersion) async{

    var sql = "CREATE TABLE $userTable ($columnId INTEGER PRIMARY KEY,"

        " $columnUserName TEXT, $columnPassword TEXT,  $columnEmail TEXT)";

    await db.execute(sql); // لتنفيذ العملية

  }

// لحفظ البانات في المجزن
  Future<int> saveUser( User user) async{
    var dbClient = await  db;
    int result = await dbClient.insert("$userTable", user.toMap());
    return result;

  }



  // للحصول علي بيانات مستخدم معين  عن طريق اسم المستخدم

  Future<User> getUserByUserName(String userName) async{
    var dbClient = await  db;
    var sql = "SELECT * FROM $userTable WHERE $columnUserName = '"+userName+"'";
    var result = await dbClient.rawQuery(sql);
    if(result.length == 0) return null;
    return  new User.fromMap(result.first) ;
  }

  // للحصول علي بيانات مستخدم معين  عن طريق id

  Future<User> getUserById(int id) async{
    var dbClient = await  db;
    var sql = "SELECT * FROM $userTable WHERE $columnId = $id";
    var result = await dbClient.rawQuery(sql);
    if(result.length == 0) return null;
    return  new User.fromMap(result.first) ;
  }


  Future<int> updateUser(User user) async{
    var dbClient = await  db;
    return  await dbClient.update(
        userTable ,user.toMap(), where: "$columnId = ?" , whereArgs: [user.id]
    );
  }

  Future close() async{
    var dbClient = await  db;
    return  await dbClient.close();
  }





}