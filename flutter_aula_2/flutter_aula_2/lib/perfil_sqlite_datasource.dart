// ignore_for_file: depend_on_referenced_packages, unused_import

import 'package:flutter_aula_2/perfil_Entity.dart';
import 'package:flutter_aula_2/perfil_entity.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'data_contantes.dart';

class PerfilSQLiteDatasource {
  Future<Database> _getDatabase() async {
    return openDatabase(
      join(await getDatabasesPath(), DATABASE_NAME),
      onCreate: (db, version) async {
        await db.execute(CREATE_PERFIL_TABLE_SCRIPT);

        await db.rawInsert('''insert into $PERFIL_TABLE_NAME(
          $PERFIL_COLUMN_NOME,
          $PERFIL_COLUMN_EMAIL,
          $PERFIL_COLUMN_SENHA)
          values(
            'admin','admin@admin','123')
          )
        )''');
      },
      version: 1,
    );
  }

  Future create( perfil) async {
    try {
      final Database db = await _getDatabase();
      perfil.perfilID = await db.rawInsert('''insert into $PERFIL_TABLE_NAME(
        $PERFIL_COLUMN_NOME,
        $PERFIL_COLUMN_EMAIL,
        $PERFIL_COLUMN_SENHA)
          values(
            '${perfil.nome}','${perfil.email}','${perfil.senha}')
      )''');
    } catch (ex) {
      return;
    }
  }
}
