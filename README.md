# 📚 Sistema de Biblioteca Virtual - Semestre 2

## 🎯 Descripción del Proyecto

Este repositorio contiene un **Sistema de Gestión de Biblioteca Virtual** desarrollado en **Haskell** como parte del segundo semestre de programación funcional. El proyecto implementa un sistema completo de préstamos y devoluciones de libros con interfaces separadas para usuarios y administradores.

## 🏗️ Estructura del Proyecto

```
semestre-2/
├── 📁 curso2/           # Ejercicios y conceptos básicos de Haskell
│   ├── funciones.hs     # Operaciones matemáticas básicas
│   ├── listas.hs        # Manipulación de listas
│   ├── logicas.hs       # Operadores lógicos
│   ├── comparacion.hs   # Operadores de comparación
│   └── video1.hs        # Construcción de listas recursiva
├── 📁 trabajo 1/        # Directorio de trabajo adicional
├── admin.hs             # Módulo de administración
├── usuario.hs           # Módulo de usuario
├── menu.hs              # Menú principal del sistema
├── libros.txt           # Base de datos de libros disponibles
├── prestamos.txt        # Registro de préstamos activos
└── devoluciones.txt     # Historial de devoluciones
```

## 🚀 Características Principales

### 📋 Sistema de Biblioteca Virtual

#### 👤 **Panel de Usuario**
- **Ver libros disponibles**: Lista numerada de todos los libros en inventario
- **Solicitar libro**: Préstamo de libros usando ID y número de carnet
- **Devolver libro**: Devolución de libros prestados con registro de hora
- **Validación de carnet**: Sistema de identificación de usuarios

#### 🔧 **Panel de Administrador**
- **Agregar libros**: Añadir nuevos libros al inventario
- **Ver lista completa**: Visualizar todos los libros disponibles
- **Registro de préstamos**: Monitoreo de libros prestados con timestamps
- **Registro de devoluciones**: Historial completo de devoluciones

#### 🕒 **Sistema de Timestamps**
- Registro automático de fecha y hora en formato `YYYY-MM-DD HH:MM:SS`
- Seguimiento temporal de todas las transacciones

### 📚 Ejercicios de Curso (Directorio `curso2/`)

#### **Funciones Matemáticas** (`funciones.hs`)
```haskell
- Suma, resta, multiplicación, división
- Operaciones de módulo y división entera
- Funciones de valor absoluto y signo
```

#### **Manipulación de Listas** (`listas.hs`)
```haskell
- head, tail, last, init
- length, null, reverse
- take, drop para sublistas
```

#### **Operadores Lógicos** (`logicas.hs`)
```haskell
- Conjunción (&&), disyunción (||)
- Negación (not)
```

#### **Operadores de Comparación** (`comparacion.hs`)
```haskell
- Igualdad, desigualdad, comparaciones numéricas
- Funciones maximum, minimum
- Verificación de elementos (elem, notElem)
- Predicados all, any
```

#### **Construcción Recursiva** (`video1.hs`)
```haskell
- Función recursiva para construir listas
- Uso de funciones auxiliares con where
```

## 🛠️ Tecnologías Utilizadas

- **Lenguaje**: Haskell
- **Paradigma**: Programación Funcional
- **Gestión de Archivos**: Sistema de persistencia basado en archivos de texto
- **Manejo de Tiempo**: Módulo `Data.Time` para timestamps
- **Modularización**: Sistema de módulos separados por funcionalidad

## 📖 Cómo Usar el Sistema

### Prerrequisitos
- Tener instalado GHC (Glasgow Haskell Compiler)
- Sistema operativo compatible con Haskell

### Ejecución
```bash
# Compilar el programa principal
ghc menu.hs

# Ejecutar el sistema
./menu
```

### Flujo de Uso

1. **Inicio**: El sistema muestra el menú principal con opciones de Usuario, Administrador o Salir
2. **Panel Usuario**: 
   - Visualizar libros disponibles con IDs numerados
   - Solicitar préstamo ingresando ID del libro y número de carnet
   - Devolver libros prestados seleccionando de la lista activa
3. **Panel Administrador**:
   - Agregar nuevos libros al inventario
   - Consultar registros de préstamos y devoluciones
   - Monitorear el estado general de la biblioteca

## 📊 Base de Datos

### Libros Disponibles (`libros.txt`)
Contiene una colección de libros principalmente sobre:
- **Deportivo Independiente Medellín (DIM)**: Historia y pasión del equipo
- **Cristiano Ronaldo (CR7)**: Biografías y logros deportivos
- **Literatura deportiva**: Historias inspiradoras del fútbol

### Registros del Sistema
- **`prestamos.txt`**: Préstamos activos con formato `[Libro] | carnet [Número] | Prestado a las [Timestamp]`
- **`devoluciones.txt`**: Historial de devoluciones con formato `[Libro] | carnet: [Número] | Devuelto a las [Timestamp]`

## 🎓 Conceptos de Haskell Implementados

### Programación Funcional
- **Funciones puras**: Sin efectos secundarios en cálculos matemáticos
- **Inmutabilidad**: Uso de estructuras de datos inmutables
- **Recursión**: Implementación de algoritmos recursivos
- **Pattern matching**: Uso extensivo en estructuras de control

### Manejo de E/O (IO)
- **Monadas IO**: Para interacciones con archivos y usuario
- **Operaciones de archivo**: Lectura, escritura y modificación de archivos
- **Entrada de usuario**: Captura y validación de input

### Modularización
- **Separación de responsabilidades**: Módulos `Admin`, `Usuario`, y `Main`
- **Importación de módulos**: Sistema de dependencias entre módulos
- **Encapsulación**: Funciones específicas por dominio

## 🔧 Funcionalidades Técnicas

### Validación de Datos
- Verificación de IDs válidos para libros
- Validación de rangos en selecciones de menú
- Manejo de errores en entrada de usuario

### Persistencia de Datos
- Sistema de archivos como base de datos
- Operaciones CRUD sobre archivos de texto
- Mantenimiento de integridad de datos

### Interfaz de Usuario
- Menús interactivos en consola
- Navegación intuitiva entre paneles
- Mensajes informativos y de confirmación

## 📝 Notas de Desarrollo

Este proyecto representa el aprendizaje progresivo de Haskell, desde conceptos básicos hasta la implementación de un sistema funcional completo. Los archivos en `curso2/` muestran la evolución del conocimiento en:

1. **Operaciones básicas**: Aritmética y manipulación de datos
2. **Estructuras de datos**: Trabajo con listas y funciones de orden superior
3. **Lógica de programación**: Implementación de condicionales y comparaciones
4. **Aplicación práctica**: Sistema completo de biblioteca virtual

## 🏆 Logros del Proyecto

- ✅ Sistema funcional de gestión de biblioteca
- ✅ Interfaz de usuario completa e intuitiva
- ✅ Separación clara de responsabilidades (Admin/Usuario)
- ✅ Persistencia de datos eficiente
- ✅ Manejo robusto de errores
- ✅ Implementación de timestamps automáticos
- ✅ Validación de entrada de usuario

## 🎯 Objetivos Académicos Cumplidos

1. **Dominio de sintaxis Haskell**: Uso correcto de tipos, funciones y módulos
2. **Programación funcional**: Aplicación de principios de inmutabilidad y funciones puras
3. **Manejo de IO**: Interacción efectiva con archivos y usuario
4. **Diseño modular**: Arquitectura limpia y mantenible
5. **Resolución de problemas**: Implementación completa de un sistema real

---

**Desarrollado por**: Sebastian Sanchez  
**Curso**: Programación Funcional - Semestre 2  
**Lenguaje**: Haskell  
**Fecha**: 2025

> 💡 **Tip**: Este proyecto demuestra cómo la programación funcional puede utilizarse para crear aplicaciones prácticas y robustas con una arquitectura limpia y mantenible.
