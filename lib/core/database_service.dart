import 'dart:convert';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import '../models/child_model.dart';

class DatabaseService {
  DatabaseService._();
  static final DatabaseService instance = DatabaseService._();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('synergy.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(
      path,
      version: 1,
      onCreate: _createDB,
    );
  }

  Future<void> _createDB(Database db, int version) async {
    await db.execute('''
      CREATE TABLE children (
        id INTEGER PRIMARY KEY,
        parentId INTEGER NOT NULL,
        name TEXT NOT NULL,
        ageInYears INTEGER NOT NULL,
        interests TEXT NOT NULL,
        diagnosisNotes TEXT,
        goals TEXT NOT NULL
      )
    ''');
  }

  Future<void> saveChildren(List<ChildModel> children) async {
    final db = await instance.database;
    await db.transaction((txn) async {
      await txn.delete('children');
      for (final child in children) {
        await txn.insert('children', {
          'id': child.id,
          'parentId': child.parentId,
          'name': child.name,
          'ageInYears': child.ageInYears,
          'interests': jsonEncode(child.interests),
          'diagnosisNotes': child.diagnosisNotes,
          'goals': jsonEncode(child.goals),
        });
      }
    });
  }

  Future<List<ChildModel>> getChildren() async {
    final db = await instance.database;
    final result = await db.query('children');

    return result.map((json) {
      return ChildModel(
        id: json['id'] as int,
        parentId: json['parentId'] as int,
        name: json['name'] as String,
        ageInYears: json['ageInYears'] as int,
        interests: (jsonDecode(json['interests'] as String) as List).cast<String>(),
        diagnosisNotes: json['diagnosisNotes'] as String?,
        goals: jsonDecode(json['goals'] as String) as List<dynamic>,
      );
    }).toList();
  }

  Future<void> clearChildren() async {
    final db = await instance.database;
    await db.delete('children');
  }

  Future<void> close() async {
    final db = await instance.database;
    db.close();
  }
}
