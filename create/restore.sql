-- Enables grouping to avoid raplications.
-- took from https://dba.stackexchange.com/questions/237048/1055-expression-1-of-select-list-is-not-in-group-by-clause-and-contains-nonag
SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));


USE bestbuy;


DROP TABLE IF EXISTS items;
CREATE TABLE items (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  slug CHAR(20) NOT NULL UNIQUE,
  model CHAR(20) NOT NULL UNIQUE,
  price REAL UNSIGNED NOT NULL,
  name CHAR(255) NOT NULL
);

INSERT INTO items (slug, model, price, name)
  VALUES
    ('rog-laptop',            'G513QC-BB74',          999.99,   'ASUS 15.6" Republic of Gamers Strix G15 Series Gaming Laptop (Eclipse Gray, 2021)'),
    ('chromecast',            'GA00439-US',           29.99,    'Google Chromecast (Charcoal, 3rd Generation)'),
    ('nest-mini',             'GA00781-US',           49.00,    'Google Nest Mini (Charcoal, 2nd Generation)'),
    ('google-pixel-6',        'GA02900-US',           599.00,   'Google Pixel 6 Dual-SIM 128GB 5G Smartphone (Unlocked, Stormy Black)'),
    ('radeon6500',            'RX-65XT4DBDQ',         397.97,   'XFX Speedster QICK210 Radeon RX 6500XT Black Gaming Graphics Card with 4GB GDDR6 HDMI , AMD RDNA 2 RX-65XT4DBDQ'),
    ('small-raid',            'NST-272S3-BK',         39.99,    'Vantec Nexstar GX USB 3.0 Dual 2.5" SATA SSD/HDD RAID Enclosure, Black (NST-272S3-BK)'),
    ('pi4-4gb',               'PI4-4GB',              55.00,    'Raspberry Pi 4 4GB Board O'),
    ('pi0w',                  'PI-Z2W',               15.00,    'Raspberry Pi Zero 2 W Board Only'),
    ('32ddr4',                'BL2K16G32C16U4R',      164.16,   'Crucial Ballistix 3200 MHz DDR4 DRAM Desktop Gaming Memory Kit 32GB (16GBx2) CL16 BL2K16G32C16U4R (RED)'),
    ('motherboard',           'ROG STRIX B550-I',     194.00,   'ASUS ROG Strix B550-I Gaming AMD AM4 (3rd Gen Ryzen™) Mini-ITX SFF Gaming Motherboard (PCIe 4.0, WiFi 6, 2.5Gb LAN, DDR4 5100+ (O.C.), Front USB 3.2 Gen 2 Type-C, Addressable Gen 2 RGB and Aura Sync)'),
    ('nzxt-case',             'CA-H510i-BR',          132.99,   'NZXT H510i - CA-H510i-BR - Compact ATX Mid-Tower PC Gaming Case - Front I/O USB Type-C Port - Vertical GPU Mount - Tempered Glass Side Panel - Integrated RGB Lighting - Black/Red'),
    ('ryzen-7',               'Ryzen 7 5800X',        349.99,   'AMD Ryzen 7 5800X 8-core, 16-Thread Unlocked Desktop Processor'),
    ('ryzen-9',               'Ryzen 9 5900X',        499.98,   'AMD Ryzen 9 5900X 12-core, 24-Thread Unlocked Desktop Processor'),
    ('m2',                    'CT1000P5PSSD8',        134.99,   'Crucial P5 Plus 1TB PCIe 4.0 3D NAND NVMe M.2 Gaming SSD, up to 6600MB/s - CT1000P5PSSD8'),
    ('psu',                   'ROG-THOR-850P',        219.51,   'ASUS ROG Thor 850 Certified 850W Fully-Modular RGB Power Supply with LiveDash OLED Panel'),
    ('cpu-cooler',            'NH-U12S CH.BK',        79.95,    'Noctua NH-U12S chromax.Black, 120mm Single-Tower CPU Cooler (Black)'),
    ('cooler',                'NF-F12 PWM CH.BK.S',   22.60,    'Noctua NF-F12 PWM chromax.Black.swap, Premium Quiet Fan, 4-Pin (120mm, Black)'),
    ('wired-keyboard',        '920-009066',           50.00,    'Logitech K280e Pro Wired Keyboard, Black (920-009066)'),
    ('wireless-keyboard',     '920-007558',           29.99,    'Logitech K380 Multi-Device Bluetooth Keyboard - Windows, Mac, Chrome OS, Android, iPad, iPhone, Apple TV Compatible - with Flow Cross-Computer Control and Easy-Switch up to 3 Devices - Dark Grey'),
    ('paste',                 'NT-H1 3.5g',           8.95,     'Noctua NT-H1 3.5g, Pro-Grade Thermal Compound Paste (3.5g)');


DROP TABLE IF EXISTS sections;
CREATE TABLE sections (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  slug CHAR(20) NOT NULL UNIQUE
);

INSERT INTO sections (slug)
  VALUES
    ('byop'),
    ('computers'),
    ('components'),
    ('accessories'),
    ('sbc'),
    ('iot'),
    ('smartphones');

DROP TABLE IF EXISTS section_meta;
CREATE TABLE section_meta (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  item_id INT UNSIGNED NOT NULL,
  section_id INT UNSIGNED NOT NULL
);

INSERT INTO section_meta (item_id, section_id)
  VALUES
    (1, 2),
    (2, 6),
    (3, 6),
    (4, 7),
    (5, 1),
    (5, 3),
    (6, 4),
    (7, 5),
    (8, 5),
    (9, 1),
    (9, 3),
    (10, 1),
    (10, 3),
    (11, 1),
    (11, 3),
    (12, 1),
    (12, 3),
    (13, 1),
    (13, 3),
    (14, 1),
    (14, 3),
    (15, 1),
    (15, 3),
    (16, 1),
    (16, 3),
    (17, 1),
    (17, 3),
    (18, 1),
    (18, 4),
    (19, 4),
    (20, 1),
    (20, 4);


DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  first_name CHAR(20) NOT NULL,
  last_name CHAR(20) NOT NULL,
  total_sales REAL UNSIGNED NOT NULL
);


DROP TABLE IF EXISTS sale_meta;
CREATE TABLE sale_meta (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  same_sale_id INT UNSIGNED NOT NULL,
  item_id INT UNSIGNED NOT NULL,
  customer_id INT UNSIGNED NOT NULL 
);
