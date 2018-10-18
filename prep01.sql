CREATE TABLE 科目
 (科目番号 CHAR(3) NOT NULL,
  科目名  NCHAR(12) NOT NULL,
  単位数  INT,
  PRIMARY KEY(科目番号),
  CHECK(単位数 BETWEEN 1 AND 12)
);

CREATE TABLE 学生
 (学籍番号 CHAR(5) NOT NULL,
  氏名 CHAR(26) NOT NULL,
  専攻 CHAR(30),
  住所 CHAR(60)
);

CREATE TABLE 履修
 (科目番号 CHAR(3) NOT NULL,
  学籍番号 CHAR(5) NOT NULL,
  成績     INTEGER,
  PRIMARY  KEY(科目番号,学籍番号),
  FOREIGN  KEY(科目番号)
           REFERENCES 科目(科目番号)
);

CREATE TABLE 実習課題
 (科目番号 CHAR(3) NOT NULL,
  課題番号 CHAR(2) NOT NULL,
  課題名 CHAR(60)
);

INSERT INTO 科目 VALUES
 ('001','データベース',2);
INSERT INTO 科目 VALUES
 ('002','システムプログラム',3);
INSERT INTO 科目 VALUES
 ('003','セキュリティ',2);

INSERT INTO 学生 VALUES
 ('00001','山田一郎','情報工学','東京都');
INSERT INTO 学生 VALUES
 ('00002','鈴木明','情報工学','茨城県');
INSERT INTO 学生 VALUES
 ('00003','佐藤花子','情報工学','東京都');
INSERT INTO 学生 VALUES
 ('00004','田中太郎','統計学','神奈川県');

INSERT INTO 履修 VALUES
 ('001','00001',90);
INSERT INTO 履修 VALUES
 ('001','00002',80);
INSERT INTO 履修 VALUES
 ('002','00001',90);
INSERT INTO 履修 VALUES
 ('002','00003',70);
INSERT INTO 履修 VALUES
 ('003','00001',60);

INSERT INTO 実習課題 VALUES
 ('001','01','データモデリング');
INSERT INTO 実習課題 VALUES
 ('001','02','データベース設計');
INSERT INTO 実習課題 VALUES
 ('001','03','SQL');
INSERT INTO 実習課題 VALUES
 ('001','01','Cプログラミング');
INSERT INTO 実習課題 VALUES
 ('002','02','テーブル設計');

