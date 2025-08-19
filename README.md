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

##video de explicaciom 
https://youtu.be/aeCCcvi1rNw

**Plataforma(s) de Desarrollo:**
- **Sistema Operativo**: Windows
- **Compilador**: GHC (Glasgow Haskell Compiler)
- **Editor**: IntelliJ IDEA / IDE compatible con Haskell
- **Control de Versiones**: Git & GitHub

## 🎯 Descripción del Proyecto

Este proyecto implementa un **Sistema de Gestión de Préstamos de Libros para Biblioteca** desarrollado completamente en **Haskell**, cumpliendo con todos los requerimientos funcionales y técnicos especificados en la práctica I del curso ST0244.


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

