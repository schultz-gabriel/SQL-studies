CREATE TABLE alunos (
  matricula INTEGER PRIMARY KEY AUTOINCREMENT,
  nome TEXT,
  cpf INTEGER UNIQUE,
  responsavel TEXT
)

CREATE TABLE professores(
  id_professor INTEGER PRIMARY KEY AUTOINCREMENT,
  NOME text,
  cpf INTEGER UNIQUE,
  materia TEXT
)

CREATE TABLE aulas(
  id_professor INTEGER,
  id_aluno INTEGER,
  FOREIGN KEY(id_professor) REFERENCES professores(id_professor)
  FOREIGN KEY(id_aluno) REFERENCES alunos(matricula)
)