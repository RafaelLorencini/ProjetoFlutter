const String DATABASE_NAME = 'gestao_senhas_db';

const String PERFIL_TABLE_NAME = 'perfil';
const String PERFIL_COLUMN_ID = 'perfilID';
const String PERFIL_COLUMN_NOME = 'nome';
const String PERFIL_COLUMN_EMAIL = 'email';
const String PERFIL_COLUMN_SENHA = 'senha';

const String CARTAO_TABLE_NAME = 'cartao';
const String CARTAO_COLUMN_ID = 'cartaoID';
const String CARTAO_COLUMN_DESCRICAO = 'descricao';
const String CARTAO_COLUMN_NUMERO = 'numero';
const String CARTAO_COLUMN_VALIDADE = 'validade';
const String CARTAO_COLUMN_CVV = 'cvv';
const String CARTAO_COLUMN_SENHA = 'senha';

const String SENHA_TABLE_NAME = 'senha';
const String SENHA_COLUMN_ID = 'senhaID';
const String SENHA_COLUMN_DESCRICAO = 'descricao';
const String SENHA_COLUMN_LOGIN = 'login';
const String SENHA_COLUMN_SENHA = 'senha';

const String CREATE_PERFIL_TABLE_SCRIPT = '''
CREATE TABLE $PERFIL_TABLE_NAME(
  $PERFIL_COLUMN_ID INTEGER PRIMARY KEY AUTOINCREMENT,
  $PERFIL_COLUMN_NOME TEXT,
  $PERFIL_COLUMN_EMAIL TEXT,
  $PERFIL_COLUMN_SENHA TEXT,
)
''';
const String CREATE_CARTAO_TABLE_SCRIPT = '''
CREATE TABLE $CARTAO_TABLE_NAME(
  $CARTAO_COLUMN_ID INTEGER PRIMARY KEY AUTOINCREMENT,
  $CARTAO_COLUMN_DESCRICAO TEXT,
  $CARTAO_COLUMN_VALIDADE TEXT,
  $CARTAO_COLUMN_CVV INTEGER,
  $CARTAO_COLUMN_SENHA TEXT,
)
''';

const String CREATE_SENHA_TABLE_SCRIPT = '''
CREATE TABLE $SENHA_TABLE_NAME(
  $SENHA_COLUMN_ID INTEGER PRIMARY KEY AUTOINCREMENT,
  $SENHA_COLUMN_DESCRICAO TEXT,
  $SENHA_COLUMN_LOGIN TEXT,
  $SENHA_COLUMN_SENHA TEXT,
)
''';