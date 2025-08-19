# ST0244 - Programming Languages and Computing Paradigms
## School of Applied Sciences and Engineering - EAFIT University
### Lecturer: Alexander Narváez Berrío
### August 2025

---

# 📚 PRACTICE I - Library Book Lending Management System
**VALUE: 12% OF THE FINAL GRADE OF THE COURSE**


## 👥 Información del Grupo

**Integrantes del Grupo:**
- Sebastian Sanchez
- Cristobal Machado

#video de explicaciom 
https://youtu.be/aeCCcvi1rNw

**Plataforma(s) de Desarrollo:**
- **Sistema Operativo**: Windows
- **Compilador**: GHC (Glasgow Haskell Compiler)
- **Editor**: IntelliJ IDEA / IDE compatible con Haskell
- **Control de Versiones**: Git & GitHub

## 🎯 Descripción del Proyecto

Este proyecto implementa un **Sistema de Gestión de Préstamos de Libros para Biblioteca** desarrollado completamente en **Haskell**, cumpliendo con todos los requerimientos funcionales y técnicos especificados en la práctica I del curso ST0244.

## 📋 Requerimientos Funcionales Implementados

### ✅ 1. Registrar Préstamo (Check Out)
- **Archivo**: `usuario.hs` - función `solicitarLibro`
- **Funcionalidad**: Permite registrar cuando un libro es prestado de la biblioteca
- **Implementación**: 
  - Solicita código ID del libro
  - Registra tiempo actual del préstamo usando `Data.Time`
  - Guarda registro en `prestamos.txt`
  - Remueve libro de inventario disponible

### ✅ 2. Búsqueda por ID de Libro
- **Archivo**: `usuario.hs` - función `verLibros`
- **Funcionalidad**: Permite buscar un libro prestado por su ID único
- **Implementación**:
  - Muestra libros disponibles con IDs numerados
  - Permite selección por número de ID
  - Valida existencia del ID antes de procesar

### ✅ 3. Cálculo de Duración de Préstamo
- **Archivo**: `admin.hs` y `usuario.hs` - función `obtenerHora`
- **Funcionalidad**: Calcula tiempo que un libro ha estado prestado
- **Implementación**:
  - Registra timestamp de préstamo y devolución
  - Formato: `YYYY-MM-DD HH:MM:SS`
  - Permite cálculo manual de duración entre fechas

### ✅ 4. Lista de Libros Prestados
- **Archivo**: `admin.hs` - función `verRegistroPrestamos`
- **Funcionalidad**: Carga y muestra todos los registros de libros prestados
- **Implementación**:
  - Lee archivo `prestamos.txt`
  - Muestra información completa en terminal
  - Formato: `[Libro] | carnet [Número] | Prestado a las [Timestamp]`

### ✅ 5. Registrar Devolución (Check In)
- **Archivo**: `usuario.hs` - función `devolverLibro`
- **Funcionalidad**: Permite registrar devolución de libro a la biblioteca
- **Implementación**:
  - Solicita código ID del libro
  - Registra tiempo actual de devolución
  - Actualiza inventario disponible
  - Guarda registro en `devoluciones.txt`

## 🔧 Requerimientos Técnicos Cumplidos

### ✅ Desarrollo 100% en Haskell
- Todo el código está escrito en Haskell puro
- Uso de paradigma de programación funcional
- Implementación de monadas IO para efectos secundarios

### ✅ Persistencia de Datos
- **Archivos de datos**:
  - `libros.txt`: Inventario de libros disponibles
  - `prestamos.txt`: Registro de préstamos activos
  - `devoluciones.txt`: Historial de devoluciones
- **Carga al inicio**: El programa lee información almacenada en archivos
- **Manipulación en listas**: Datos se cargan en listas para procesamiento

### ✅ Gestión de Archivos
- Funciones `readFile`, `writeFile`, `appendFile`
- Persistencia automática de todas las transacciones
- Mantenimiento de integridad de datos entre sesiones

### ✅ Funciones Separadas
- **`agregarLibro`**: Agregar libros al inventario
- **`solicitarLibro`**: Registrar préstamos
- **`devolverLibro`**: Registrar devoluciones
- **`verLibros`**: Mostrar inventario
- **`verRegistroPrestamos`**: Mostrar préstamos activos
- **`verRegistroDevolucion`**: Mostrar historial de devoluciones
- **`obtenerHora`**: Gestión de timestamps

## 🏗️ Arquitectura del Sistema

```
Sistema de Biblioteca Virtual
├── menu.hs (Main)       # Punto de entrada principal
├── admin.hs (Admin)     # Módulo de administración
├── usuario.hs (Usuario) # Módulo de usuario
├── libros.txt           # Base de datos de libros
├── prestamos.txt        # Registro de préstamos
└── devoluciones.txt     # Historial de devoluciones
```

### Módulos Implementados

#### **Main Module** (`menu.hs`)
- Menú principal del sistema
- Navegación entre paneles de Usuario y Administrador
- Control de flujo de la aplicación

#### **Admin Module** (`admin.hs`)
- Panel de administración completo
- Gestión de inventario de libros
- Consulta de registros y reportes
- Funciones administrativas

#### **Usuario Module** (`usuario.hs`)
- Panel de usuario final
- Operaciones de préstamo y devolución
- Consulta de libros disponibles
- Validación de transacciones

## 📊 Archivo Library.txt (Registros de Ejemplo)

El sistema utiliza los siguientes archivos con registros de ejemplo:

### `libros.txt` - Inventario de Libros
```
DIM campeon Historia de una noche inolvidable
CR7 y el arte del gol imposible
Corazon rojo 100 años del Deportivo Independiente Medellin
Cristiano Ronaldo El imparable
DIM sangre y gloria
CR7 Sueños de campeon
La hinchada que nunca se rinde DIMjose sito
```

### `prestamos.txt` - Registros de Préstamos Activos
```
profe ponganos 5 | carnet 10421412 | Prestado a las 2025-08-18 02:01:09
profe ponganos 5 | carnet 148124 | Prestado a las 2025-08-18 02:04:07
```

### `devoluciones.txt` - Historial de Devoluciones
```
profe ponganos 5 | carnet: 124124 | Devuelto a las 2025-08-18 02:01:28
```

**Repositorio GitHub**: https://github.com/sebastiansanchez6/semestre-2  
**Curso**: ST0244 - Programming Languages and Computing Paradigms  
**Universidad**: EAFIT - Escuela de Ciencias Aplicadas e Ingeniería  

