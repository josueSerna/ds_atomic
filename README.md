# ds_atomic

Un **Design System** para Flutter basado en la metodología **Atomic Design**. Este paquete proporciona una colección de componentes UI reutilizables organizados en cinco niveles jerárquicos: **Tokens**, **Atoms**, **Molecules**, **Organisms**, **Templates** y **Pages**.

---

## Tabla de Contenidos

- [Instalación](#instalación)
- [Arquitectura - Atomic Design](#arquitectura---atomic-design)
- [Tokens (Design Tokens)](#tokens-design-tokens)
  - [DsColors](#dscolors)
  - [DsSpacing](#dsspacing)
  - [DsRadius](#dsradius)
  - [DsTypography](#dstypography)
  - [DsTheme](#dstheme)
- [Atoms (Átomos)](#atoms-átomos)
  - [DSText](#dstext)
  - [DsPrimaryButton](#dsprimarybutton)
  - [DsInput](#dsinput)
- [Molecules (Moléculas)](#molecules-moléculas)
  - [DsIconButton](#dsiconbutton)
  - [DsCard](#dscard)
  - [DsProductCard](#dsproductcard)
  - [DsLabeledInput](#dslabeledinput)
- [Organisms (Organismos)](#organisms-organismos)
  - [DsLoginForm](#dsloginform)
  - [DsAppHeader](#dsappheader)
  - [DsCardSection](#dscardsection)
- [Templates (Plantillas)](#templates-plantillas)
  - [DsBaseTemplate](#dsbasetemplate)
  - [DsCenteredTemplate](#dscenteredtemplate)
- [Pages (Páginas)](#pages-páginas)
  - [DsCatalogPage](#dscatalogpage)
  - [DsProductsPage](#dsproductspage)
  - [DsProductDetailPage](#dsproductdetailpage)
- [Ejemplo Completo (Showcase App)](#ejemplo-completo-showcase-app)
  - [Requisitos Previos](#requisitos-previos)
  - [Cómo Ejecutar el Ejemplo](#cómo-ejecutar-el-ejemplo)
  - [Estructura del Ejemplo](#estructura-del-ejemplo)

---

## Instalación

Agrega `ds_atomic` como dependencia en tu archivo `pubspec.yaml`:

**Desde GitHub:**

```yaml
dependencies:
  ds_atomic:
    git:
      url: https://github.com/josueSerna/ds_atomic
```

**Ruta local (desarrollo):**

```yaml
dependencies:
  ds_atomic:
    path: ../ds_atomic
```

**Desde pub.dev (si está publicado):**

```yaml
dependencies:
  ds_atomic: ^0.0.1
```

Luego ejecuta:

```bash
flutter pub get
```

Importa el paquete en tu código Dart:

```dart
import 'package:ds_atomic/ds_atomic.dart';
```

> Con un solo import tienes acceso a **todos** los componentes, tokens y páginas del Design System.

---

## Arquitectura - Atomic Design

```
Tokens  →  Atoms  →  Molecules  →  Organisms  →  Templates  →  Pages
```

| Nivel        | Descripción                                                         | Ejemplos en este paquete                  |
|-------------|----------------------------------------------------------------------|-------------------------------------------|
| **Tokens**   | Variables de diseño base (colores, espaciado, tipografía, radios)    | `DsColors`, `DsSpacing`, `DsTypography`   |
| **Atoms**    | Componentes UI mínimos e indivisibles                               | `DSText`, `DsPrimaryButton`, `DsInput`     |
| **Molecules**| Combinaciones de átomos que forman componentes funcionales           | `DsCard`, `DsProductCard`, `DsIconButton` |
| **Organisms**| Grupos de moléculas que forman secciones completas de UI             | `DsLoginForm`, `DsAppHeader`, `DsCardSection` |
| **Templates**| Layouts y estructuras de página reutilizables                       | `DsBaseTemplate`, `DsCenteredTemplate`     |
| **Pages**    | Pantallas completas listas para usar (solo UI, sin lógica de negocio) | `DsCatalogPage`, `DsProductsPage`, `DsProductDetailPage` |

```
lib/
└── src/
    ├── tokens/          # Variables de diseño
    ├── atoms/           # Componentes básicos
    │   ├── buttons/
    │   ├── inputs/
    │   └── text/
    ├── molecules/       # Combinaciones de átomos
    │   ├── buttons/
    │   ├── cards/
    │   └── form_fields/
    ├── organisms/       # Secciones complejas
    │   ├── forms/
    │   ├── headers/
    │   └── sections/
    ├── templates/       # Layouts de página
    └── pages/           # Pantallas completas
```

---

## Tokens (Design Tokens)

Los tokens son las constantes de diseño fundamentales del sistema. Todas las clases de tokens usan constructores privados (`_()`) para evitar la instanciación — solo exponen valores `static const`.

### DsColors

Paleta de colores del Design System.

```dart
DsColors.primary        // Color(0xFF3B82F6) — Azul primario
DsColors.secondary      // Color(0xFF10B981) — Verde secundario
DsColors.background     // Color(0xFFF9FAFB) — Fondo general
DsColors.surface        // Colors.white       — Superficie (cards, inputs)
DsColors.textPrimary    // Color(0xFF111827) — Texto principal
DsColors.textSecondary  // Color(0xFF6B7280) — Texto secundario
DsColors.error          // Color(0xFFEF4444) — Color de error
```

**Ejemplo de uso:**

```dart
Container(
  color: DsColors.background,
  child: Text(
    'Hola mundo',
    style: TextStyle(color: DsColors.textPrimary),
  ),
)
```

### DsSpacing

Escala de espaciado consistente para paddings y margins.

```dart
DsSpacing.xs  //  4.0
DsSpacing.sm  //  8.0
DsSpacing.md  // 16.0
DsSpacing.lg  // 24.0
DsSpacing.xl  // 32.0
```

**Ejemplo de uso:**

```dart
Padding(
  padding: const EdgeInsets.all(DsSpacing.md),
  child: Text('Contenido con padding de 16px'),
)
```

### DsRadius

Valores de border radius para esquinas redondeadas.

```dart
DsRadius.sm  //  6.0
DsRadius.md  // 12.0
DsRadius.lg  // 20.0
```

**Ejemplo de uso:**

```dart
Container(
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(DsRadius.md),
  ),
)
```

### DsTypography

Estilos de texto predefinidos.

```dart
DsTypography.heading  // fontSize: 24, fontWeight: bold, color: textPrimary
DsTypography.body     // fontSize: 16, color: textPrimary
DsTypography.caption  // fontSize: 12, color: textSecondary
```

**Ejemplo de uso:**

```dart
Text('Título', style: DsTypography.heading);
Text('Párrafo', style: DsTypography.body);
Text('Nota al pie', style: DsTypography.caption);
```

### DsTheme

Tema de Material Design preconfigurado con los tokens del Design System.

```dart
MaterialApp(
  theme: DsTheme.lightTheme,
  home: const MyHomePage(),
)
```

`DsTheme.lightTheme` configura automáticamente:
- `scaffoldBackgroundColor` → `DsColors.background`
- `primaryColor` → `DsColors.primary`
- `colorScheme` → generado desde `DsColors.primary`

---

## Atoms (Átomos)

Los átomos son los componentes más pequeños e indivisibles del sistema.

### DSText

Widget de texto que usa `DsTypography.body` como estilo por defecto.

| Propiedad | Tipo          | Requerido | Descripción                                |
|-----------|---------------|-----------|--------------------------------------------|
| `text`    | `String`      | Sí        | El texto a mostrar (parámetro posicional)  |
| `style`   | `TextStyle?`  | No        | Estilo personalizado (default: `DsTypography.body`) |
| `align`   | `TextAlign?`  | No        | Alineación del texto                       |

```dart
// Texto con estilo por defecto (body)
DSText('Hola mundo')

// Texto con estilo heading
DSText(
  'Título principal',
  style: DsTypography.heading,
)

// Texto centrado con estilo caption
DSText(
  'Nota al pie',
  style: DsTypography.caption,
  align: TextAlign.center,
)
```

### DsPrimaryButton

Botón primario de ancho completo con soporte para estado de carga.

| Propiedad   | Tipo           | Requerido | Descripción                           |
|-------------|----------------|-----------|---------------------------------------|
| `label`     | `String`       | Sí        | Texto del botón                       |
| `onPressed` | `VoidCallback` | Sí        | Función al presionar                  |
| `isLoading` | `bool`         | No        | Muestra un spinner si es `true` (default: `false`) |

```dart
// Botón básico
DsPrimaryButton(
  label: 'Guardar',
  onPressed: () {
    print('Botón presionado');
  },
)

// Botón en estado de carga
DsPrimaryButton(
  label: 'Enviando...',
  onPressed: () {},
  isLoading: true,
)
```

Comportamiento:
- Ancho completo (`width: double.infinity`), alto fijo de 48px.
- Fondo `DsColors.primary`, texto blanco, bordes redondeados con `DsRadius.md`.
- Cuando `isLoading = true`, se desactiva el `onPressed` y muestra un `CircularProgressIndicator` blanco.

### DsInput

Campo de texto (TextField) estilizado con los tokens del Design System.

| Propiedad     | Tipo                    | Requerido | Descripción                              |
|---------------|-------------------------|-----------|------------------------------------------|
| `controller`  | `TextEditingController` | Sí        | Controlador del campo de texto           |
| `hintText`    | `String?`               | No        | Texto placeholder                        |
| `obscureText` | `bool`                  | No        | Oculta el texto (para contraseñas, default: `false`) |

```dart
final controller = TextEditingController();

DsInput(
  controller: controller,
  hintText: 'Escribe aquí...',
)

// Input para contraseña
DsInput(
  controller: passwordController,
  hintText: 'Contraseña',
  obscureText: true,
)
```

Comportamiento:
- Fondo `DsColors.surface` (blanco), sin borde visible.
- Padding interno de `DsSpacing.md` (16px).
- Bordes redondeados con `DsRadius.md`.

---

## Molecules (Moléculas)

Las moléculas combinan átomos para crear componentes más funcionales.

### DsIconButton

Botón con ícono y etiqueta. Internamente utiliza `DsPrimaryButton`.

| Propiedad   | Tipo           | Requerido | Descripción              |
|-------------|----------------|-----------|--------------------------|
| `icon`      | `IconData`     | Sí        | Ícono del botón          |
| `label`     | `String`       | Sí        | Texto del botón          |
| `onPressed` | `VoidCallback` | Sí        | Función al presionar     |

```dart
DsIconButton(
  icon: Icons.save,
  label: 'Guardar',
  onPressed: () {
    print('Guardado');
  },
)
```

### DsCard

Contenedor tipo tarjeta con sombra, fondo blanco y bordes redondeados.

| Propiedad | Tipo     | Requerido | Descripción                  |
|-----------|----------|-----------|------------------------------|
| `child`   | `Widget` | Sí        | Contenido de la tarjeta      |

```dart
DsCard(
  child: Column(
    children: [
      DSText('Título de la tarjeta', style: DsTypography.heading),
      DSText('Descripción del contenido'),
    ],
  ),
)
```

Comportamiento:
- Padding de `DsSpacing.md` (16px).
- Fondo `DsColors.surface`, bordes con `DsRadius.md`.
- Sombra sutil con `BoxShadow`.

### DsProductCard

Tarjeta de producto con imagen, título y precio. Incluye manejo automático de carga de imágenes y errores.

| Propiedad  | Tipo            | Requerido | Descripción                          |
|------------|-----------------|-----------|--------------------------------------|
| `imageUrl` | `String`        | Sí        | URL de la imagen del producto        |
| `title`    | `String`        | Sí        | Nombre del producto                  |
| `price`    | `String`        | Sí        | Precio formateado del producto       |
| `onTap`    | `VoidCallback?` | No        | Función al tocar la tarjeta          |

```dart
DsProductCard(
  imageUrl: 'https://example.com/product.jpg',
  title: 'Producto Premium',
  price: '\$99.99',
  onTap: () {
    print('Producto seleccionado');
  },
)
```

Comportamiento:
- **Manejo de carga**: Muestra `CircularProgressIndicator` mientras carga la imagen
- **Manejo de errores**: Muestra ícono `broken_image` si la imagen falla
- Imagen con altura fija de 120px, esquinas redondeadas con `DsRadius.sm`
- Usa `DsCard` internamente para el contenedor
- Layout vertical: imagen → título → precio
- El precio usa `DsTypography.caption` para estilo secundario

### DsLabeledInput

Input con etiqueta superior. Combina `DSText` (caption) + `DsInput`.

| Propiedad     | Tipo                    | Requerido | Descripción                              |
|---------------|-------------------------|-----------|------------------------------------------|
| `label`       | `String`                | Sí        | Texto de la etiqueta                     |
| `controller`  | `TextEditingController` | Sí        | Controlador del input                    |
| `hintText`    | `String?`               | No        | Texto placeholder                        |
| `obscureText` | `bool`                  | No        | Oculta texto (default: `false`)          |

```dart
DsLabeledInput(
  label: 'Email',
  controller: TextEditingController(),
  hintText: 'correo@ejemplo.com',
)

DsLabeledInput(
  label: 'Contraseña',
  controller: TextEditingController(),
  obscureText: true,
)
```

---

## Organisms (Organismos)

Los organismos son secciones completas de UI formadas por moléculas y átomos.

### DsLoginForm

Formulario de login completo con campos de email, contraseña y botón de envío.

| Propiedad  | Tipo           | Requerido | Descripción                       |
|------------|----------------|-----------|-----------------------------------|
| `onSubmit` | `VoidCallback` | Sí        | Función al presionar "Iniciar Sesión" |

```dart
DsLoginForm(
  onSubmit: () {
    print('Login presionado');
  },
)
```

Incluye internamente:
- `DsLabeledInput` para Email (hint: `correo@ejemplo.com`)
- `DsLabeledInput` para Contraseña (`obscureText: true`)
- `DsPrimaryButton` con label "Iniciar Sesion"

### DsAppHeader

Encabezado de aplicación con título y acción opcional.

| Propiedad | Tipo      | Requerido | Descripción                   |
|-----------|-----------|-----------|-------------------------------|
| `title`   | `String`  | Sí        | Texto del encabezado          |
| `action`  | `Widget?` | No        | Widget de acción (ej: botón)  |

```dart
DsAppHeader(
  title: 'Bienvenido',
  action: IconButton(
    icon: const Icon(Icons.logout),
    onPressed: () {},
  ),
)
```

### DsCardSection

Sección con título y lista de items envueltos en `DsCard`.

| Propiedad | Tipo           | Requerido | Descripción                        |
|-----------|----------------|-----------|------------------------------------|
| `title`   | `String`       | Sí        | Título de la sección (heading)     |
| `items`   | `List<Widget>` | Sí        | Lista de widgets para cada tarjeta |

```dart
DsCardSection(
  title: 'Resumen',
  items: const [
    DSText('Usuarios Activos'),
    DSText('Ventas del día'),
    DSText('Notificaciones'),
  ],
)
```

Cada widget de `items` se envuelve automáticamente en un `DsCard` con espaciado entre ellos.

---

## Templates (Plantillas)

Las plantillas definen la estructura general de una página.

### DsBaseTemplate

Plantilla base con `Scaffold`, AppBar opcional y padding automático.

| Propiedad              | Tipo      | Requerido | Descripción                          |
|------------------------|-----------|-----------|--------------------------------------|
| `title`                | `String?` | No        | Título del AppBar (si se proporciona)|
| `body`                 | `Widget`  | Sí        | Contenido principal                  |
| `floatingActionButton` | `Widget?` | No        | FAB opcional                         |

```dart
DsBaseTemplate(
  title: 'Mi Página',
  body: Column(
    children: [
      DSText('Contenido de la página'),
    ],
  ),
)
```

Comportamiento:
- Fondo `DsColors.background`.
- Padding de `DsSpacing.lg` (24px) alrededor del `body`.
- Si `title` es `null`, no muestra AppBar.

### DsCenteredTemplate

Plantilla que centra su contenido con un ancho máximo de 400px.

| Propiedad | Tipo     | Requerido | Descripción          |
|-----------|----------|-----------|----------------------|
| `child`   | `Widget` | Sí        | Contenido a centrar  |

```dart
DsCenteredTemplate(
  child: DsLoginForm(
    onSubmit: () {},
  ),
)
```

Comportamiento:
- Fondo `DsColors.background`.
- Contenido centrado vertical y horizontalmente.
- `ConstrainedBox` con `maxWidth: 400`.
- Padding de `DsSpacing.lg` (24px).

---

## Pages (Páginas)

Pantallas completas listas para usar que combinan templates, organisms y otros componentes. Las páginas del Design System **solo manejan la UI**, reciben datos por parámetros y no contienen lógica de negocio.

### DsCatalogPage

Página genérica para mostrar una lista de items en formato catálogo.

| Propiedad   | Tipo                     | Requerido | Descripción                          |
|-------------|--------------------------|-----------|--------------------------------------|
| `title`     | `String`                 | Sí        | Título del catálogo                  |
| `items`     | `List<CatalogItem>`      | Sí        | Lista de items a mostrar             |
| `onItemTap` | `Function(CatalogItem)`  | Sí        | Callback al tocar un item            |

```dart
DsCatalogPage(
  title: 'Categorías',
  items: categories.map((c) => CatalogItem(title: c.name)).toList(),
  onItemTap: (item) {
    // Navegar o ejecutar acción
  },
)
```

**Modelo `CatalogItem`:**
```dart
class CatalogItem {
  final String title;
  CatalogItem({required this.title});
}
```

Componentes usados:
- `DsBaseTemplate` para la estructura
- `DsAppHeader` para el encabezado
- `DsCard` para cada item
- `ListView.builder` con espaciado consistente

### DsProductsPage

Página genérica para mostrar una lista de productos con imagen, título y precio.

| Propiedad       | Tipo                      | Requerido | Descripción                          |
|-----------------|---------------------------|-----------|--------------------------------------|
| `title`         | `String`                  | Sí        | Título de la página                  |
| `products`      | `List<ProductItem>`       | Sí        | Lista de productos a mostrar         |
| `onProductTap`  | `Function(ProductItem)`   | Sí        | Callback al tocar un producto        |

```dart
DsProductsPage(
  title: 'Electrónica',
  products: products.map((p) => ProductItem(
    imageUrl: p.image,
    title: p.name,
    price: '\$${p.price}',
  )).toList(),
  onProductTap: (product) {
    // Navegar al detalle
  },
)
```

**Modelo `ProductItem`:**
```dart
class ProductItem {
  final String imageUrl;
  final String title;
  final String price;
  
  ProductItem({
    required this.imageUrl,
    required this.title,
    required this.price,
  });
}
```

Componentes usados:
- `DsBaseTemplate` para la estructura
- `DsAppHeader` para el encabezado
- `DsProductCard` para cada producto
- `ListView.builder` con espaciado consistente

### DsProductDetailPage

Página genérica para mostrar el detalle completo de un producto.

| Propiedad     | Tipo              | Requerido | Descripción                          |
|---------------|-------------------|-----------|--------------------------------------|
| `product`     | `ProductDetail`   | Sí        | Datos del producto                   |
| `onAddToCart` | `VoidCallback?`   | No        | Callback al agregar al carrito       |

```dart
DsProductDetailPage(
  product: ProductDetail(
    imageUrl: product.image,
    title: product.name,
    price: '\$${product.price}',
    category: product.category,
    description: product.description,
  ),
  onAddToCart: () {
    // Lógica para agregar al carrito
  },
)
```

**Modelo `ProductDetail`:**
```dart
class ProductDetail {
  final String imageUrl;
  final String title;
  final String price;
  final String category;
  final String description;
  
  ProductDetail({
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.category,
    required this.description,
  });
}
```

Componentes usados:
- `DsBaseTemplate` con scroll
- `DsAppHeader` con título "Detalle"
- `DsCard` para la imagen y precio
- `DSText` con diferentes estilos tipográficos
- `DsPrimaryButton` para agregar al carrito

---

## Ejemplo Completo (Showcase App)

El directorio `example/` contiene una aplicación Flutter completa que sirve como **showcase interactivo** de todos los componentes del Design System.

### Requisitos Previos

- **Flutter SDK** `>=3.9.2` instalado y configurado
- Un dispositivo/emulador disponible (Android, iOS, Web, Desktop)
- Editor de código (VS Code recomendado)

Verifica tu instalación:

```bash
flutter doctor
```

### Cómo Ejecutar el Ejemplo

1. **Clona o descarga** el repositorio del paquete.

2. **Navega al directorio del ejemplo:**

   ```bash
   cd ds_atomic/example
   ```

3. **Instala las dependencias:**

   ```bash
   flutter pub get
   ```

4. **Ejecuta la aplicación** en tu dispositivo/emulador preferido:

   ```bash
   # En el emulador/dispositivo conectado
   flutter run

   # En Chrome (web)
   flutter run -d chrome

   # En Windows
   flutter run -d windows

   # En un dispositivo específico (lista dispositivos con flutter devices)
   flutter run -d <device_id>
   ```

### Estructura del Ejemplo

```
example/
├── lib/
│   ├── main.dart              # Punto de entrada de la app
│   ├── showcase_home.dart     # Pantalla principal con lista de categorías
│   └── pages/
│       ├── atoms_page.dart       # Showcase de Átomos
│       ├── molecules_page.dart   # Showcase de Moléculas
│       ├── organisms_page.dart   # Showcase de Organismos
│       ├── templates_page.dart   # Showcase de Templates
│       ├── pages_page.dart       # Navegación a páginas completas
│       └── catalog_example.dart  # Ejemplos de páginas de catálogo
└── pubspec.yaml               # Dependencia local a ds_atomic
```

#### main.dart — Punto de entrada

```dart
import 'package:ds_atomic/ds_atomic.dart';
import 'package:example/showcase_home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ShowcaseApp());
}

class ShowcaseApp extends StatelessWidget {
  const ShowcaseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Design System Showcase',
      theme: DsTheme.lightTheme,  // Usa el tema del Design System
      home: const ShowcaseHome(),
    );
  }
}
```

#### Pantalla Principal — ShowcaseHome

La pantalla principal presenta un `ListView` con cinco categorías navegables:

| Categoría      | Página              | Componentes mostrados                              |
|----------------|---------------------|-----------------------------------------------------|
| **Atoms**      | `AtomsPage`         | `DSText`, `DsPrimaryButton`, `DsInput`              |
| **Molecules**  | `MoleculesPage`     | `DsCard`, `DsIconButton`, `DsProductCard` (con ejemplos interactivos) |
| **Organisms**  | `OrganismsPage`     | `DsAppHeader`, `DsCardSection` (con múltiples variaciones) |
| **Templates**  | `TemplatesPage`     | `DsBaseTemplate` con contenido de ejemplo           |
| **Pages**      | `PagesPage`         | Navegación a `DsCatalogPage`, `DsProductsPage`, `DsProductDetailPage` |

Al tocar cada ítem se navega a la página correspondiente donde se visualizan los componentes en acción.

---

## Uso Rápido

```dart
import 'package:ds_atomic/ds_atomic.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: DsTheme.lightTheme,
      home: DsBaseTemplate(
        title: 'Mi App',
        body: Column(
          children: [
            DSText('Bienvenido', style: DsTypography.heading),
            const SizedBox(height: DsSpacing.md),
            DsCard(
              child: DSText('Contenido en una tarjeta'),
            ),
            const SizedBox(height: DsSpacing.lg),
            DsPrimaryButton(
              label: 'Acción Principal',
              onPressed: () {},
            ),
          ],
        ),
      ),
    ),
  );
}
```

---
