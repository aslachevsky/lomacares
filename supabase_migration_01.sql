-- Agregar columna de imágenes (array de URLs)
ALTER TABLE propiedades_mensuales
  ADD COLUMN IF NOT EXISTS imagenes TEXT[] DEFAULT '{}';

-- Datos de prueba
INSERT INTO propiedades_mensuales
  (tipo, ciudad, barrio, metros_cuadrados, descripcion, habitaciones, precio_mensual, ubicacion, estado, imagenes)
VALUES
(
  'Casa', 'Asunción', 'Las Mercedes', 150,
  'Casa amplia con jardín privado y garaje para 2 vehículos. Cuenta con living comedor, cocina equipada, lavandería independiente y patio trasero. Ideal para familia.',
  3, 4500000, 'Av. Mcal. López 2150', 'Libre', '{}'
),
(
  'Casa', 'Asunción', 'Mburucuyá', 200,
  'Casa esquinera de dos plantas con quincho y pileta. Cuatro dormitorios con placard, dos baños completos y toilette. Amplio living con vista al jardín.',
  4, 6800000, 'Calle Chaco Boreal 880', 'A Liberarse', '{}'
),
(
  'Departamento', 'Asunción', 'Villa Morra', 72,
  'Departamento moderno en edificio con seguridad 24h y estacionamiento. Dos dormitorios, baño completo, cocina americana integrada al living. Piso 5 con vista abierta.',
  2, 2800000, 'Av. España 1640, Piso 5', 'Libre', '{}'
);
