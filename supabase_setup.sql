-- Tabla de propiedades para alquileres mensuales
CREATE TABLE propiedades_mensuales (
  id              SERIAL PRIMARY KEY,
  tipo            TEXT NOT NULL CHECK (tipo IN ('Local Comercial', 'Casa', 'Departamento')),
  ciudad          TEXT NOT NULL,
  barrio          TEXT,
  metros_cuadrados NUMERIC(10,2) NOT NULL,
  descripcion     TEXT,
  habitaciones    INT,   -- solo aplica a Casa / Departamento, nullable
  precio_mensual  NUMERIC(12,2) NOT NULL,
  ubicacion       TEXT,
  estado          TEXT NOT NULL DEFAULT 'Libre'
                    CHECK (estado IN ('Libre', 'Alquilado', 'A Liberarse')),
  created_at      TIMESTAMPTZ DEFAULT NOW()
);

-- Habilitar Row Level Security
ALTER TABLE propiedades_mensuales ENABLE ROW LEVEL SECURITY;

-- Permitir lectura pública (anon key puede leer)
CREATE POLICY "Lectura publica"
  ON propiedades_mensuales
  FOR SELECT
  TO anon
  USING (true);
