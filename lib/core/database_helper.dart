import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static Future<Database> initDb() async {
    return openDatabase(
      join(await getDatabasesPath(), 'doggie_database.db'),
      onCreate: (db, version) {
        db.execute(
          'CREATE TABLE dogs(id INTEGER PRIMARY KEY, name TEXT, age INTEGER)',
        );
        return db.execute(
            'CREATE TABLE pessoa(id INTEGER PRIMARY KEY, NAME TEXT NOT NULL, EMAIL TEXT, TELEFONE TEXT, enderecoAvRua TEXT, enderecoNumero TEXT, enderecoCep Text, enderecoCidade Text, enderecoEstado Text)');
      },
      version: 1,
    );
  }
}
