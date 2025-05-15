-- Tabela de cursos
CREATE TABLE IF NOT EXISTS curso (
  id SERIAL PRIMARY KEY,
  nome TEXT NOT NULL
);

-- Relacionamento aluno → curso
ALTER TABLE aluno
ADD COLUMN IF NOT EXISTS curso_id INTEGER;

ALTER TABLE aluno
ADD CONSTRAINT fk_curso FOREIGN KEY (curso_id) REFERENCES curso(id) ON DELETE SET NULL;
