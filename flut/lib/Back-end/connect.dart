import 'package:mongo_dart/mongo_dart.dart';
import 'dart:io' show Platform;
import 'getcredential.dart';

String host = Platform.environment['MONGO_DART_DRIVER_HOST'] ?? '127.0.0.1';
String port = '27017';

class Connecting {
  Future<bool> add(
      String name, String email, String password, String phone) async {
    //connection to mongodb
    var db = Db('mongodb://10.0.2.2:27017/app');
    // var db = Db.create('mongodb+srv://darshil:5505@star.y08c5f1.mongodb.net/?retryWrites=true&w=majority');
    // var users = <String, Map>{};
    await db.open();

    //inside the collection author
    var collection = db.collection('users');
    var author = <String, Map>{};
    author = {
      'name': {
        'name': name,
        'email': email,
        'password': password,
        'phone': phone
      }
    };
    print(author);
    detail={
      'name': name,
      'email': email,
      'password': password,
      'phone': phone
    } ;
    // add user detail
    await collection.insertOne(
        {'name': name, 'email': email, 'password': password, 'phone': phone});
    await db.close();
    return true;
  }

  Future<bool> check(String email, String password) async {
    print("Call 1");
    //connection to mongodb
    var db = Db('mongodb://10.0.2.2:27017/app');
    // var db = Db('mongodb://darshil:5505@star.y08c5f1.mongodb.net/?retryWrites=true&w=majority');
    // var users = <String, Map>{};
    await db.open();
    print("Call 2 ");
    //inside the collection author
    var collection = db.collection('users');
    var authors = await collection.find(where.eq("email", email)).toList();
    print("now ");
    print(authors);
    print(" end ");
    try {
      print("object");
      if(authors[0]['password'] != password ) return false;

       detail= authors[0];
      return true;
    } catch (e) {
      print(e);
    }
    db.close();
    return false;
  }
}