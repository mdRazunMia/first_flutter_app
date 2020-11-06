import 'dart:async';
import 'dart:io' as io;
//import 'package:flutter/material.dart';
import 'package:my_first_app/models/employee.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class DBHelper {
  static Database _db;
  static const String ID = 'id';
  static const String NAME = 'name';
  static const String TABLE = 'Employee';
  static const String DB_NAME = 'employee.db';

  Future<Database> get db async {
    if (_db != null) {
      return _db;
    }
    _db = await initDb();
    return _db;
  }

  initDb() async {
    io.Directory documentDiretory = await getApplicationDocumentsDirectory();
    String path = join(documentDiretory.path, DB_NAME);
    var db = await openDatabase(path, version: 1, onCreate: _onCreate);
    return db;
  }

  _onCreate(Database db, int version) async {
    await db
        .execute("CREATE TABLE $TABLE ($ID INTEGER PRIMARY KEY, $NAME TEXT)");
  }

  Future<Employee> save (Employee employee) async{
    var dbClient = await db;
    employee.id = await dbClient.insert(TABLE, employee.toMap());
    return employee;

    // await dbClient.transaction((tnx) async{
    //   var query = "INSERT INTO $TABLE ($NAME) VALUES('"+employee.name+"')";
    //   return await tnx.rawInsert(query);
    // }
    // );

  }

  Future<List<Employee>> getEmployees() async {
    var dbClient = await db;
    List<Map> maps = await dbClient.query(TABLE, columns:[ID, NAME]);
    // List<Map> maps = await dbClient.rawQuery("SELETE * FROM $TABLE");

    List<Employee> employees = [];
    if(maps.length > 0){
      for( int i=0 ; i<maps.length;i++){
        employees.add(Employee.fromMap(maps[i]));// Employee.fromMap function in the emplouee.dart file
      }
    }
    return employees;
  }

  Future<int> delete(int id) async {
    var dbClient = await db;
    return await dbClient.delete(TABLE, where: '$ID = ?', whereArgs: [id]);
  }

  Future<int> update(Employee employee) async{
    var dbClient = await db;
    return await dbClient.update(TABLE, employee.toMap(), 
    where: '$ID = ?', whereArgs: [employee.id]);
  }


  Future close() async{
    var dbClient = await db;
    dbClient.close();
  }


}
