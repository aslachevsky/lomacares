# CLAUDE.md — Proyecto Lomacares

> Instrucciones para Claude (y para cualquier desarrollador que abra este proyecto en VSCode).
> Este archivo es leído automáticamente por Claude al trabajar en esta carpeta.

---

## Contexto del proyecto

**Lomacares** es una empresa de alquileres de propiedades en Paraguay.
El sitio web es un Landing Page estático (`index.html`) que se despliega en **Vercel**
y está versionado en GitHub: https://github.com/aslachevsky/lomacares

---

## Propiedades disponibles

| Propiedad | Tipo de alquiler | Ubicación |
|-----------|-----------------|-----------|
| Quinta Lomacares | **Diario** | Lambaré, Gran Asunción |
| Casa San Bernardino | **Diario** | San Bernardino, Cordillera |
| Salón Comercial | **Mensual** | Barrio San Vicente, Asunción |
| Alquileres Mensuales | **Mensual** | Varias zonas |

---

## Estructura del sitio (`index.html`)

El sitio es un único archivo HTML autocontenido (las imágenes van embebidas en base64).

```
nav          → Navegación fija con logo
#hero        → Banner principal con foto de la Quinta Lambaré
#propiedades → Propiedades de alquiler DIARIO (Quinta + Casa San Bernardino)
#salon       → Salón Comercial San Vicente (alquiler MENSUAL, sin tarifario)
#tarifario   → Tablas de precios: Quinta Lambaré y Casa San Bernardino
#mensuales   → Sección general de alquileres mensuales
#formulario  → Formulario de contacto (envía a Cmoes123@gmail.com via formsubmit.co)
#contacto    → Botón WhatsApp + datos de contacto
footer       → Logo, copyright, localidades
```

---

## Tarifario — cómo editar precios

Los precios están en el HTML dentro de etiquetas `<td class="precio">`.
Buscar en el archivo: `class="precio"` y cambiar solo el número.

Formato de moneda: **Guaraníes (₲)** con puntos de miles. Ej: `₲ 1.200.000`

---

## Formulario de contacto

- Servicio: **formsubmit.co** (gratuito, sin backend)
- Destino: `Cmoes123@gmail.com`
- **Primera vez:** al enviar el primer formulario llega un email de verificación a ese correo — hay que confirmar.
- Opciones del formulario: Quinta Lambaré / Casa San Bernardino / Salón Comercial / Alquiler Mensual

---

## Imágenes

| Archivo | Uso |
|---------|-----|
| `logolomacares.jpeg` | Logo de Lomacares (embebido en el HTML como base64) |
| `lomalambare.jpeg` | Foto de la Quinta Lambaré (embebida en el HTML como base64) |

> Las imágenes se incrustan en el HTML para que el archivo sea autocontenido
> y funcione sin servidor de archivos estáticos adicional.

---

## Deploy

- **Repositorio:** https://github.com/aslachevsky/lomacares
- **Hosting:** Vercel (conectado al repo, auto-deploy en cada push a `main`)
- **URL pública:** https://lomacares.vercel.app *(activa una vez configurado Vercel)*

### Para subir cambios

```bash
# Desde la terminal, en la carpeta del proyecto:
git add index.html
git commit -m "Descripción del cambio"
git push origin main
```

Vercel detecta el push y actualiza el sitio automáticamente en ~1 minuto.

---

## Configuración regional

- País: **Paraguay**
- Moneda: **Guaraníes (₲)** — formato: `₲ 1.000.000`
- Fechas: formato `DD/MM/AAAA`
- Idioma del sitio: **Español (Paraguay)**

---

## Próximos pasos planeados

- [ ] Integrar tarifario dinámico con **Firebase** o **Supabase** (a decidir en reunión con interesado)
- [ ] Crear panel de administración para editar precios sin tocar código
- [ ] Agregar fotos reales de Casa San Bernardino y Salón Comercial
- [ ] Conectar dominio propio cuando esté disponible
- [ ] Actualizar número de WhatsApp real (reemplazar `595981000000`)

---

## Paleta de colores del sitio

| Variable | Color | Uso |
|----------|-------|-----|
| `--verde` | `#4a7c59` | Badges, foco, acentos |
| `--terracota` | `#c4703a` | Botones CTA, labels |
| `--crema` | `#f8f3eb` | Fondo general |
| `--marron` | `#3d2b1f` | Nav, textos oscuros |
| `--marron-med` | `#7a5c40` | Salón Comercial, secundario |
