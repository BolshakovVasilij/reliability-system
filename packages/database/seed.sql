DELETE FROM "SecurityDevice";

INSERT INTO "SecurityDevice" ("name", "type", "status", "ipAddress", "location", "lastHeartbeat", "metadata") VALUES
('Камера главного входа', 'CAMERA', 'ONLINE', '192.168.1.101', 'Главный вход, вестибюль', NOW(), NULL),
('Камера парковки', 'CAMERA', 'OFFLINE', '192.168.1.102', 'Парковка, сектор А', NOW() - INTERVAL '1 day', NULL),
('Контроллер СКУД 1', 'CONTROLLER', 'ONLINE', '10.0.0.1', 'Серверная, шкаф №3', NOW(), NULL),
('Контроллер СКУД 2', 'CONTROLLER', 'DEGRADED', '10.0.0.2', 'Серверная, шкаф №3', NOW() - INTERVAL '1 hour', '{"cause": "Потеря связи с одним из замков"}'),
('Датчик движения склада', 'SENSOR', 'ONLINE', NULL, 'Склад №2', NOW(), NULL),
('Датчик движения периметра', 'SENSOR', 'MAINTENANCE', NULL, 'Периметр, участок Б', NOW() - INTERVAL '2 hours', NULL),
('Камера склада', 'CAMERA', 'OFFLINE', '192.168.1.103', 'Склад №1', NULL, NULL),
('Контроллер турникета', 'CONTROLLER', 'ONLINE', '10.0.0.3', 'Главный вход', NOW(), NULL),
('Датчик температуры серверной', 'SENSOR', 'DEGRADED', '192.168.1.200', 'Серверная, стойка А', NOW() - INTERVAL '30 minutes', '{"temperature": 38, "unit": "C"}'),
('Камера заднего двора', 'CAMERA', 'ONLINE', '192.168.1.104', 'Задний двор', NOW(), NULL);