-- 账户类型表
CREATE TABLE AccountTypes (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  createdAt DATETIME NOT NULL
);

--货币类型表
CREATE TABLE Currencys (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  createdAt DATETIME NOT NULL,
  iconName TEXT
);

-- 账户表
CREATE TABLE Accounts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL,
  typeId INTEGER NOT NULL,
  currencyId INTEGER DEFAULT 0,
  balance REAL DEFAULT 0.0,
  createdAt DATETIME NOT NULL,
  FOREIGN KEY (typeId) REFERENCES AccountTypes(id)
);

-- 资产类型表
CREATE TABLE AssetsTypes (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  createdAt DATETIME NOT NULL
);

-- 资产/标的表
CREATE TABLE Assets (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  symbol TEXT NOT NULL,
  name TEXT,
  assetTypeId INTEGER NOT NULL,
  exchange TEXT,
  currencyId INTEGER DEFAULT 0,
  multiplier REAL DEFAULT 1.0,
  notes TEXT,
  FOREIGN KEY (assetTypeId) REFERENCES AssetsTypes(id)
);

-- 交易记录表
CREATE TABLE Transactions (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  accountId INTEGER NOT NULL,
  assetId INTEGER NOT NULL,
  date DATETIME NOT NULL,
  sideId INTEGER NOT NULL,
  quantity REAL NOT NULL,
  price REAL NOT NULL,
  notional REAL,
  fee REAL DEFAULT 0.0,
  tax REAL DEFAULT 0.0,
  reason TEXT,
  entryConditionId INTEGER,
  sessionId INTEGER,
  traderTypeId INTEGER,
  stopLoss REAL,
  exitPrice REAL,
  moodId INTEGER,
  createdAt DATETIME NOT NULL,
  FOREIGN KEY (accountId) REFERENCES Accounts(id),
  FOREIGN KEY (assetId) REFERENCES Assets(id),
  FOREIGN KEY (sideId) REFERENCES Sides(id),
  FOREIGN KEY (entryConditionId) REFERENCES EntryConditions(id),
  FOREIGN KEY (sessionId) REFERENCES Sessions(id),
  FOREIGN KEY (traderTypeId) REFERENCES TraderTypes(id),
  FOREIGN KEY (moodId) REFERENCES Moods(id)
);

-- 进场状态表
CREATE TABLE EntryConditions (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  createdAt DATETIME NOT NULL
);

-- 交易场所表
CREATE TABLE Sessions (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  createdAt DATETIME NOT NULL
);

-- 交易类型表
CREATE TABLE TraderTypes (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  createdAt DATETIME NOT NULL
);

-- 心情表
CREATE TABLE Moods (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  createdAt DATETIME NOT NULL,
  iconName TEXT
);

-- side 买卖方向表
CREATE TABLE Sides (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  createdAt DATETIME NOT NULL
);

-- 交易分类表，一个交易可属多个分类
CREATE TABLE Categories (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  parentId INTEGER DEFAULT 0,
  transactionId INTEGER NOT NULL,
  createdAt DATETIME NOT NULL,
  FOREIGN KEY (transactionId) REFERENCES Transactions(id)
);

-- 常用交易理由表
CREATE TABLE Reason (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  createdAt DATETIME NOT NULL
);

-- 标签表，标签记录以方便分析
CREATE TABLE Tags (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL,
  color TEXT
);

-- 交易记录和标签关联表
CREATE TABLE TransactionTags (
  transactionId INTEGER NOT NULL,
  tagId INTEGER NOT NULL,
  PRIMARY KEY (transactionId, tagId),
  FOREIGN KEY (transactionId) REFERENCES Transactions(id),
  FOREIGN KEY (tagId) REFERENCES Tags(id)
);

-- 交易记录备注表
CREATE TABLE Remarks (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  transactionId INTEGER NOT NULL,
  remarksText TEXT,
  createdAt DATETIME NOT NULL,
  FOREIGN KEY (transactionId) REFERENCES Transactions(id)
);

-- 交易记录备注附件表
CREATE TABLE RemarkMedia (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  remarkId INTEGER NOT NULL,
  mediaType TEXT NOT NULL,
  filePath TEXT NOT NULL,
  createdAt DATETIME NOT NULL,
  FOREIGN KEY (remarkId) REFERENCES Remarks(id)
);

-- 交易记录附件表
CREATE TABLE TransactionMedia (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  transactionId INTEGER NOT NULL,
  mediaType TEXT NOT NULL,
  filePath TEXT NOT NULL,
  note TEXT,
  createdAt DATETIME NOT NULL,
  FOREIGN KEY (transactionId) REFERENCES Transactions(id)
);

-- 系统配置表
CREATE TABLE Settings (
  key TEXT PRIMARY KEY,
  value TEXT
);
