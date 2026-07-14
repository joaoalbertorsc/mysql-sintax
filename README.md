# Sintaxe MySQL - Guia Prático de Banco de Dados 🐬

## 📝 Sobre o Projeto

Este repositório é um guia prático focado em demonstrar a **Sintaxe do MySQL** e as principais operações de banco de dados relacional.

O objetivo do projeto é servir como uma referência rápida e direta para a criação de estruturas de dados, manipulação de registros e consultas complexas, seja executando scripts SQL puros ou integrando essas operações através de uma aplicação Java.

## 💡 Principais Conceitos Abordados

* **DDL (Data Definition Language):** Como estruturar o banco de dados criando tabelas (`CREATE`), modificando estruturas existentes (`ALTER`) e removendo objetos (`DROP`).
* **DML (Data Manipulation Language):** Operações fundamentais de CRUD: inserção (`INSERT`), atualização (`UPDATE`) e exclusão de registros (`DELETE`).
* **DQL (Data Query Language):** Consultas avançadas de leitura utilizando `SELECT`, filtros (`WHERE`), ordenação (`ORDER BY`), agrupamentos (`GROUP BY` e `HAVING`) e paginação (`LIMIT`).
* **Relacionamentos e Joins:** Como conectar dados de múltiplas tabelas utilizando `INNER JOIN`, `LEFT JOIN` e `RIGHT JOIN`, respeitando chaves primárias (PK) e estrangeiras (FK).

## 🛠️ Tecnologias Utilizadas

* Banco de Dados MySQL
* Java (versão 17 ou superior recomendada)
* Maven (gerenciador de dependências e build)

---

## 🚀 Como Executar o Projeto

Você pode rodar este projeto e testar as interações com o banco de dados diretamente pelo terminal ou utilizando o ambiente da sua IDE.

### 📋 Pré-requisitos

Certifique-se de ter em sua máquina:

* **Servidor MySQL** rodando (seja instalado localmente ou via container Docker) na porta padrão `3306`.
* **Java JDK** (versão 17 ou superior) configurado nas variáveis de ambiente (`JAVA_HOME`).
* **Apache Maven** instalado (ou utilize o Maven Wrapper `./mvnw` incluso no projeto).
* **Aviso de Configuração:** Antes de rodar o código Java, verifique as credenciais de conexão (usuário, senha e URL do banco) no arquivo de configuração (como `application.properties` ou na classe de conexão JDBC) para garantir que batem com o seu ambiente local.

### 💻 Opção 1: Executando pelo Terminal (Sem IDE)

Para compilar o projeto e executar as interações com o MySQL via linha de comando:

1. **Clone o repositório:**
```bash
git clone https://github.com/joaoalbertorsc/mysql-sintax.git
cd mysql-sintax

```


2. **Importe os Scripts Iniciais (Opcional):**
Se o projeto possuir arquivos `.sql` na raiz (ex: `schema.sql`), importe-os para o seu banco primeiro:
```bash
mysql -u seu_usuario -p < script_criacao.sql

```


3. **Compile o projeto Java:**
Execute o Maven para baixar os drivers JDBC/JPA e compilar o código:
```bash
mvn clean compile

```


4. **Execute a aplicação:**
* Se o `pom.xml` já estiver configurado com a classe principal:
```bash
mvn exec:java

```


* Caso precise apontar explicitamente qual classe contém o método `main`:
```bash
mvn exec:java -Dexec.mainClass="com.seuprojeto.Main"

```





### 🖥️ Opção 2: Executando via IDE (IntelliJ IDEA, Eclipse, VS Code)

Para uma experiência visual e para facilitar a exploração das consultas:

1. **Importar o Projeto:**
* Abra a sua IDE.
* Vá em **Open** ou **Import Project**.
* Navegue até a pasta clonada e selecione o arquivo `pom.xml`.


2. **Conectar o Banco na IDE (Dica):**
* A maioria das IDEs (como o IntelliJ) possui uma aba "Database". Você pode conectar seu MySQL por ali para rodar os scripts SQL diretamente pela interface e visualizar as tabelas.


3. **Executar o Código Java:**
* Encontre a classe principal (normalmente dentro de `src/main/java`).
* Clique com o botão direito sobre ela e selecione **Run**.
* Acompanhe no console os logs das operações (inserts, selects, etc.) sendo realizadas no banco de dados.



---

## 👨‍💻 Autor

**João Alberto** – Engenheiro de Software

---

*Se este projeto te ajudou a dominar as consultas e a sintaxe do MySQL, deixe uma ⭐ no repositório!*
