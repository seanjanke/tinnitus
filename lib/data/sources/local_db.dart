import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:tinnitus/data/models/severity.dart';

class LocalDBService {
  static final LocalDBService _instance = LocalDBService._internal();
  factory LocalDBService() => _instance;
  LocalDBService._internal();

  static Database? _db;

  Future<Database> get db async {
    if (_db != null) return _db!;
    _db = await _initDatabase();
    return _db!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'severity.db');
    return await openDatabase(
      path,
      version: 2,
      onCreate: (db, version) {
        db.execute('''
          CREATE TABLE severity (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            answers TEXT,
            level INTEGER
          )
        ''');
      },
      onUpgrade: (db, oldVersion, newVersion) {
        if (oldVersion == 1) {
          db.execute('ALTER TABLE severity ADD COLUMN level INTEGER');
        }
      },
    );
  }

  // Insert Severity
  Future<int> insertSeverity(Severity severity) async {
    final dbClient = await db;
    return await dbClient.insert('severity', severity.toMap());
  }

  // Update Severity
  Future<int> updateSeverity(Severity severity) async {
    print('Updating severity');

    final dbClient = await db;
    return await dbClient.update(
      'severity',
      severity.toMap(),
      where: 'id = ?',
      whereArgs: [severity.id],
    );
  }

  // Get all Severity entries
  Future<List<Severity>> getSeverities() async {
    final dbClient = await db;
    final List<Map<String, dynamic>> maps = await dbClient.query('severity');

    return maps.map((map) => Severity.fromMap(map)).toList();
  }
}
