CREATE TABLE IF NOT EXISTS config (
    id INTEGER PRIMARY KEY NOT NULL,
    name TEXT,
    value TEXT
);

CREATE TABLE IF NOT EXISTS products (
    id INTEGER PRIMARY KEY NOT NULL,
    name TEXT,
    price FLOAT,
    barcode TEXT,
    last_modified INTEGER DEFAULT (strftime('%s', 'now'))
);

CREATE TABLE IF NOT EXISTS messages (
    id INTEGER PRIMARY KEY NOT NULL,
    userid INTEGER,
    title TEXT NOT NULL,
    body TEXT NOT NULL,
    last_modified INTEGER DEFAULT (strftime('%s', 'now')),
    FOREIGN KEY (userid) REFERENCES users(id) ON DELETE
    SET
        DEFAULT
);

CREATE INDEX IF NOT EXISTS config_index_name ON config (name);

CREATE INDEX IF NOT EXISTS products_index_name ON products (name);
CREATE INDEX IF NOT EXISTS products_index_barcode ON products (barcode);

INSERT INTO config (name, value) VALUES ("version", "1");
