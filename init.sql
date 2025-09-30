CREATE TABLE packets (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    source_ip TEXT NOT NULL,
    dest_ip   TEXT NOT NULL,
    bssid     TEXT NOT NULL,                -- AP MAC address
    band      TEXT NOT NULL,                -- e.g. '2.4GHz', '5GHz', '6GHz'
    frequency INTEGER NOT NULL,             -- channel center frequency in MHz
    protocol  TEXT NOT NULL,                -- e.g 'tcp', 'udp'
    length    INTEGER NOT NULL,
    timestamp DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE warnings (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    msg TEXT NOT NULL
);

CREATE TABLE errors (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    msg TEXT NOT NULL
);

-----------------------
-- Just for testing!!--
-----------------------

-- packets
INSERT INTO packets (source_ip, dest_ip, bssid, band, frequency, protocol, length)
VALUES ('192.168.0.42', '8.8.8.8', 'AA:BB:CC:DD:EE:FF', '2.4GHz', 2412, 'UDP', 128);

INSERT INTO packets (source_ip, dest_ip, bssid, band, frequency, protocol, length)
VALUES ('10.0.0.5', '192.168.0.1', '11:22:33:44:55:66', '5GHz', 5180, 'TCP', 512);

-- warnings
INSERT INTO warnings (msg)
VALUES ('This is a test warning!');

-- errors
INSERT INTO errors (msg)
VALUES ('This is a test error!');
