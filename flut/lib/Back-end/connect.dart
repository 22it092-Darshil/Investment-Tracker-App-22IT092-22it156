// import 'package:mongo_dart/mongo_dart.dart';
// import 'dart:io' show Platform;
//
// String host = Platform.environment['MONGO_DART_DRIVER_HOST'] ?? '127.0.0.1';
// String port =  '27017';
//
// class Connecting {
//   Future<bool> add(String name, String email, String password, String phone) async {
//     //connection to mongodb
//     var db = Db('mongodb://$host:$port/mydb');
//     // var users = <String, Map>{};
//     await db.open();
//
//     //inside the collection author
//     var collection = db.collection('authors');
//
//     //add user detail
//     await collection.insertOne(
//         {'name': name, 'email': email, 'password': password, 'phone': phone});
//     await db.close();
//     return true;
//   }
//   Future<bool> check(String email,String password) async {
//     print("Call 1");
//     //connection to mongodb
//     var db = Db('mongodb://localhost:27017/app');
//     var authors = <String, Map>{};
//     // var users = <String, Map>{};
//     await db.open();
//     print("Call 2 ");
//
//     //inside the collection author
//     var collection = db.collection('authors');
//
//     print("Fethching details");
//     print("Call 3 ");
//
//     await collection.find().forEach((v) {
//       authors[v['name'].toString()] = v;
//     });
//     try {
//       print(authors[email]![password]);
//       print("hello world");
//       db.close();
//       return true;
//     } catch (e) {
//       print("Not found");
//     }
//     db.close();
//     return false;
//   }
// }
