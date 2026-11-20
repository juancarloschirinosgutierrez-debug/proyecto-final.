# 🛒 Precio Mundial (Edición Ciudad Madero)
### *Comparador Inteligente de Precios y Calculadora de Presupuesto con Margen de Ganancia*

---

## 📌 Datos del Autor y Proyecto
- **Institución:** Instituto Tecnológico de Ciudad Madero (IT Madero)
- **Asignatura:** Proyecto Final de Programación
- **Autor:** Juan Carlos Chirinos Gutiérrez
- **Matrícula:** 26070627
- **Carrera:** Ingeniería Mecánica
- **Fecha:** Noviembre 2026

---

## 💡 Problema Real que Resuelve en Ciudad Madero
En la zona de **Ciudad Madero y la Zona Conurbada (Tampico-Madero-Altamira)**, los micro-negocios y emprendedores dedicados a:
1. **Repostería y Panadería Artesanal**
2. **Accesorios y Bisutería / Novedades**
3. **Uñas, Belleza y Manicura Profesional**

compran tradicionalmente sus materias primas e insumos cotizando manualmente en tiendas locales físicas como:
- **Materia Prima La Central** (Mercado / Central)
- **Parisina** (Centro de Ciudad Madero / Av. Álvaro Obregón)
- **Waldo's** (Centro Madero / Av. Tamaulipas)
- **HEB Madero**
- **Walmart Madero**
- Plataformas en línea: **Mercado Libre** y **Amazon México**

Actualmente, los emprendedores pierden entre **3 y 5 horas a la semana cotizando tienda por tienda**, lo que provoca gastos innecesarios de transporte, pérdida de tiempo y, sobre todo, **errores al fijar sus precios de venta**, vendiendo en ocasiones por debajo del costo real o sin margen de utilidad real.

**"Precio Mundial"** resuelve este problema:
- Encuentra en segundos la tienda física o digital más económica para cada producto.
- Permite armar una lista de insumos completa (Canasta Óptima).
- Muestra la comparativa de cuánto gastarías comprando todo en una sola tienda vs eligiendo lo más barato.
- Incluye una **Calculadora de Margen de Ganancia en vivo** para saber exactamente cuánto cobrar al cliente.
- Ofrece **Recomendaciones Inteligentes por Reglas de Negocio**.
- Permite guardar **Recetas y Proyectos** y exportar el **Presupuesto Formal a PDF**.

---

## 🚀 Método Rápido (Recomendado para Windows - Sin Terminal)
Si estás en Windows y no sabes programar, ¡no necesitas abrir la consola!

1. Ve a la carpeta principal del proyecto.
2. Haz doble clic en el archivo:
   👉 **`INICIAR_PRECIO_MUNDIAL.bat`**
3. El archivo verificará automáticamente las dependencias, iniciará el servidor local y **abrirá tu navegador en `http://localhost:5173` automáticamente**.

---

## 💻 Guía Paso a Paso para Ejecutar desde Terminal

### Requisitos Previos
- Tener instalado **Node.js** (Versión 18, 20 o 22 LTS). Puedes descargarlo gratis desde [nodejs.org](https://nodejs.org/).

### Paso 1: Descargar o clonar el proyecto
Descarga la carpeta del proyecto en tu computadora.

### Paso 2: Abrir la terminal en la carpeta
Abre la carpeta del proyecto, haz clic derecho y selecciona **"Abrir en la terminal"** (o en PowerShell / CMD escribe `cd ruta/de/la/carpeta`).

### Paso 3: Instalar dependencias
Escribe el siguiente comando y presiona Enter:
```bash
npm install
```
*(Este paso solo se hace la primera vez; descargará las librerías necesarias como React, Vite y Tailwind).*

### Paso 4: Iniciar el servidor local
Ejecuta:
```bash
npm run dev
```

### Paso 5: Abrir en el navegador
Abre tu navegador web favorito (Chrome, Edge, Firefox, Brave) e ingresa a:
👉 **`http://localhost:5173`**

---

## 🔑 Credenciales de Acceso Demo (Login Simulado)
La aplicación incluye autenticación simulada que almacena la sesión en `localStorage` (sin necesidad de configurar bases de datos externas):
- **Correo demo:** `demo@precio.com`
- **Contraseña:** `1234`
- *(También puedes presionar el botón de un solo clic **"⚡ Entrar Directo con Cuenta Demo"** en la pantalla de inicio).*

---

## ⚙️ Funcionalidades del Sistema

1. **Pantalla Principal & Buscador con Autocompletado:**
   - Barra de búsqueda destacada que filtra en tiempo real por nombre de producto (ej. *"harina"*, *"chantilly"*, *"pegamento"*, *"tips"*).
   - Filtros rápidos por categoría: *Todos, Repostería, Accesorios, Uñas*.
   
2. **Comparador de Tiendas en Cards:**
   - Cada producto muestra cards con el desglose de precios en las tiendas de Madero.
   - Badge verde brillante **★ MÁS BARATO** identificando la mejor oferta disponible.
   - Botón verde `+ Agregar` para añadirlo al carrito de inmediato.

3. **Carrito Inteligente con Pre-selección Óptima:**
   - Panel lateral deslizable (drawer en celulares y panel en escritorio).
   - Pre-selecciona automáticamente la tienda más barata para cada insumo.
   - Permite al usuario cambiar manualmente de tienda para cada insumo o ajustar cantidades (+ / -).
   - Muestra en tiempo real la comparativa de ahorro:
     > *"Si compras todo en Walmart $470.00 vs si eliges lo más barato $450.00 — ¡Te ahorras $20.00 MXN!"*

4. **Calculadora de Margen de Ganancia (Fórmula del Proyecto):**
   - Slider interactivo de 10% a 100% de utilidad deseada con presets rápidos.
   - Desglose en vivo de tres valores:
     - **Costo Total de Insumos ($)**
     - **Ganancia Neta ($)**
     - **Precio de Venta Sugerido ($)**
   - **Fórmula Matemática aplicada:**
     $$\text{Precio de Venta} = \text{Costo Total} \times \left(1 + \frac{\text{Margen}}{100}\right)$$
     $$\text{Ganancia Neta} = \text{Precio de Venta} - \text{Costo Total}$$
   - *Ejemplo de validación del documento:*
     $$\text{Costo } \$450.00 \text{ con } 40\% \text{ de margen } \longrightarrow \text{Precio Venta } \$630.00 \text{ | Ganancia Neta } \$180.00 \text{ MXN}$$

5. **Recomendaciones con Inteligencia Artificial Heurística (Reglas de Negocio):**
   - Generación automática de 3 reglas fijas:
     - **a) Dónde te ahorras más:** Tienda más cara vs Canasta óptima combinada.
     - **b) Insumo más costoso:** Identifica el insumo con mayor impacto porcentual en el presupuesto y recomienda compra por mayoreo.
     - **c) Simulación al 50% de margen:** Calcula la ganancia extra si se ajusta la ganancia al 50%.
     - **Regla de oro de seguridad:** NUNCA recomienda vender por debajo del costo (margen mínimo 20%).

6. **Dashboard de Rentabilidad (Gráfica de Pastel SVG):**
   - Gráfica interactiva responsiva Costo vs Ganancia en SVG puro (sin dependencias pesadas).
   - Gráfica de barras de distribución de gasto por tienda en Ciudad Madero.
   - Indicadores de Retorno de Inversión (ROI) y horas de cotización ahorradas (~3 a 5 hrs).

7. **Modo Receta (Guardar y Cotizar Hoy):**
   - Permite guardar la combinación actual como una receta permanente (ej. *"Mi receta de pastel 3 leches"*, *"Set de uñas esculturales"*).
   - Recalcula al instante cuánto cuesta producirla el día de hoy con los precios actualizados.
   - Incluye recetas pre-cargadas de demostración.

8. **Exportar a PDF / Presupuesto Imprimible:**
   - Botón **"Generar Presupuesto"** que abre una vista formal con membrete institucional del Instituto Tecnológico de Ciudad Madero.
   - Tabla completa de insumos, cantidades, tiendas sugeridas y costos.
   - Botón **"Exportar a PDF / Imprimir"** utilizando `window.print()` con diseño optimizado para hojas tamaño carta.

9. **Conectores Listos para APIs Externas (Opcional):**
   - El archivo `src/services/apiServices.js` incluye el código listo y documentado para conectar **SerpAPI / Google Shopping** y **OpenAI GPT-4**.
   - Por defecto corre 100% offline con datos locales para garantizar funcionamiento instantáneo en cualquier máquina sin solicitar API keys.

---

## 📦 Estructura del Catálogo Local (`src/data/productos.json`)
El catálogo cuenta con **más de 100 productos reales comparados en comercios de Ciudad Madero** (HEB, Walmart, Materia Prima La Central, Parisina, Waldo's, Mercado Libre y Amazon):

### Categorías de Micro-Negocios:
- **Repostería:** Harinas (Selecta 1kg), Crema Chantilly (Rich's 500ml), Huevo blanco 30 pz, Azúcar Zulka 1kg, Mantequilla Gloria 500g, Chocolate Alpezzi 1kg, Fondant Satin Ice 1kg, Colorantes en gel Deiman, Vainilla Molina, Polvo para hornear Rexal, Capacillos #72, Cajas para pastel, Queso crema, Fécula de maíz Maizena, Nuez trozo, Mangas pasteleras, etc.
- **Accesorios y Bisutería:** Hilo elástico cristal 0.8mm, Chaquira calibrada checa #11, Perlas de cristal 8mm, Broches perico chapa dorada, Argollas de unión 6mm, Alambre de cobre para alambrismo cal. 20, Pinzas para bisutería set 3 pz, Tarjetas kraft exhibidoras, Bolsitas de celofán con adhesivo, Dijes de San Benito chapa de oro, Cadena de acero inoxidable quirúrgico, Pegamento E6000, etc.
- **Uñas y Belleza:** Pegamento con brocha Mc Nails, Tips cristal 500 pz, Monómero Mia Secret 4oz, Polvo acrílico Cover Peach 2oz, Lámpara UV/LED 54W Sun X5, Limas 100/180 paquete 10 pz, Finish Gel Top Coat, Primer sin ácido X-Bond, Pincel Kolinsky #8, Aceite para cutícula, Bledo limpiador, Corta tips, Gamas de gel semi-permanente, etc.

### Nuevas Categorías del Súper (Marcas Comparadas):
- **Carnes:** Pechuga de pollo fresca (*Bachoco vs Pilgrim's*), Carne molida de res 90/10 y 80/20 (*SuKarne vs Great Value*), Bistec de res diezmillo (*SuKarne Select*), Chuleta ahumada de cerdo (*Kowi vs Proan*), Pierna con muslo (*Bachoco*), Salchichas de pavo (*Fud vs Chimex*), Jamón de pavo Virginia (*San Rafael vs Zwan*), Tocino ahumado (*Fud*).
- **Lácteos:** Leche entera y deslactosada (*Lala vs Alpura vs Santa Clara vs Lala 100*), Queso panela (*NocheBuena vs Fud*), Queso Oaxaca (*La Villita*), Queso Manchego (*NocheBuena*), Crema entera acidificada (*Lala vs Alpura*), Yoghurt griego natural (*Chobani vs Yoplait Griego*), Mantequilla con sal (*Gloria*).
- **Frutas y Verduras:** Aguacate Hass primera, Jitomate Saladet, Cebolla blanca, Limón Colima con semilla, Papa blanca Alpha, Plátano Tabasco, Manzana Gala, Manzana Red Delicious, Zanahoria fresca, Piña miel.
- **Condimentos:** Aceite vegetal y de soya (*Nutrioli vs 1-2-3*), Aceite de oliva extra virgen (*Carbonell vs Borges*), Sal fina yodada (*La Fina*), Sal marina en grano (*Sal Sol*), Pimienta negra molida (*McCormick*), Consomé de pollo (*Knorr Suiza vs Maggi*), Mayonesa con limón (*McCormick vs Hellmann's*), Salsa Cátsup (*Heinz*).
- **Cereales:** Arroz súper extra y grano grueso (*Verde Valle vs Schettino*), Frijol negro (*Verde Valle vs Schettino*), Hojuelas de avena natural (*Quaker vs Granvita*), Cereal hojuelas de maíz (*Kellogg's Zucaritas vs Nestlé Corn Flakes*), Pastas para sopa y espagueti (*La Moderna vs Barilla*).

---

## 🛠️ Solución de Problemas Frecuentes

- **¿Qué hacer si aparece un error al ejecutar `npm run dev`?**
  1. Cierra la terminal.
  2. Borra la carpeta `node_modules` y el archivo `package-lock.json`.
  3. Ejecuta de nuevo:
     ```bash
     npm install
     npm run dev
     ```

- **¿Error de script deshabilitado en Windows PowerShell (`ExecutionPolicy`)?**
  En PowerShell de Windows, puedes ejecutar:
  ```powershell
  Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned
  ```
  O simplemente haz doble clic en **`INICIAR_PRECIO_MUNDIAL.bat`**, el cual no sufre este problema.

- **¿Cómo compilar para producción?**
  Ejecuta:
  ```bash
  npm run build
  ```
  Los archivos optimizados quedarán listos en la carpeta `dist/`.
