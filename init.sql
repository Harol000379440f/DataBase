-- Crear tabla para el estado de las sillas
CREATE TABLE IF NOT EXISTS reservas (
    id SERIAL PRIMARY KEY,
    silla VARCHAR(10) NOT NULL UNIQUE,
    disponible BOOLEAN NOT NULL
);

-- Insertar datos iniciales en reservas
INSERT INTO reservas (silla, disponible) VALUES
('Silla49', true),
('Silla40', true),
('Silla47', true)
ON CONFLICT (silla) DO NOTHING;

-- Crear tabla para inventario de comidas
CREATE TABLE IF NOT EXISTS comidas (
    id SERIAL PRIMARY KEY,
    producto VARCHAR(100) NOT NULL UNIQUE,
    cantidad INT NOT NULL
);

-- Insertar datos iniciales en comidas
INSERT INTO comidas (producto, cantidad) VALUES
('Nachos', 30),
('Popcorn', 50),
('Soda', 100)
ON CONFLICT (producto) DO NOTHING;

