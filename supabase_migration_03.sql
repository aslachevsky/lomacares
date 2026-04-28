-- Políticas de escritura para el panel admin (anon por ahora, se restringe cuando se agregue auth)
CREATE POLICY "Admin insert"
  ON propiedades_mensuales FOR INSERT TO anon WITH CHECK (true);

CREATE POLICY "Admin update"
  ON propiedades_mensuales FOR UPDATE TO anon USING (true) WITH CHECK (true);

CREATE POLICY "Admin delete"
  ON propiedades_mensuales FOR DELETE TO anon USING (true);
