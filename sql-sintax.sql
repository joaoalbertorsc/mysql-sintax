-- =====================
-- 1. BANCO E TABELAS
-- =====================
CREATE DATABASE Empresa;
USE Empresa;

CREATE TABLE Funcionarios (
  id    INT PRIMARY KEY AUTO_INCREMENT,
  nome  VARCHAR(100),
  cargo VARCHAR(100)
);

CREATE TABLE Salarios (
  id             INT PRIMARY KEY AUTO_INCREMENT,
  funcionario_id INT,
  salario        DECIMAL(10,2),
  data_pagamento DATE,
  FOREIGN KEY (funcionario_id) REFERENCES Funcionarios(id) ON DELETE CASCADE
);

-- =====================
-- 2. CRUD
-- =====================

-- Insert
INSERT INTO Funcionarios (nome, cargo) VALUES
  ('Ana Paula',    'Desenvolvedora'),
  ('Bruno Silva',  'Designer'),
  ('Carlos Mota',  'Analista'),
  ('Diana Souza',  'Desenvolvedora'),
  ('Eduardo Lima', 'Gerente');

INSERT INTO Salarios (funcionario_id, salario, data_pagamento) VALUES
  (1, 6500.00, '2025-05-01'),
  (2, 4800.00, '2025-05-01'),
  (3, 5200.00, '2025-05-01'),
  (4, 6800.00, '2025-05-01'),
  (5, 9500.00, '2025-05-01');

-- Update
UPDATE Salarios
SET salario = 7200.00
WHERE funcionario_id = 1;

-- Delete
DELETE FROM Funcionarios WHERE id = 2;

-- List
SELECT f.nome, f.cargo, s.salario, s.data_pagamento
FROM Funcionarios f
LEFT JOIN Salarios s ON f.id = s.funcionario_id;

-- =====================
-- 3. AGRUPAMENTO
-- =====================
SELECT f.cargo, AVG(s.salario) AS salario_medio
FROM Funcionarios f
INNER JOIN Salarios s ON f.id = s.funcionario_id
GROUP BY f.cargo;

-- =====================
-- 4. JUNÇÃO
-- =====================
SELECT f.nome, f.cargo, s.salario
FROM Funcionarios f
INNER JOIN Salarios s ON f.id = s.funcionario_id;