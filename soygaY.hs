module Admin where

import Data.Time.Clock
import Data.Time.Format (formatTime, defaultTimeLocale)

menuAdmin :: IO ()
menuAdmin = do
    putStrLn "\n=== Panel de Administrador ==="
    putStrLn "1. Agregar libro"
    putStrLn "2. Ver lista de libros"
    putStrLn "3. Ver registro de préstamos"
    putStrLn "4. Ver registro de devolucion"
    putStrLn "5. Volver al menú principal"
    putStr "Seleccione una opción: "
    opcion <- getLine
    case opcion of
        "1" -> do
            agregarLibro
            menuAdmin
        "2" -> do
            verLibros
            menuAdmin
        "3" -> do
            verRegistroPrestamos
            menuAdmin
        "4" -> do
            verRegistroDevolucion
            menuAdmin
        
        "5" -> return ()
        _   -> do
            putStrLn "Opción inválida"
            menuAdmin

-- agregar libro al archivoñ
agregarLibro :: IO ()
agregarLibro = do
    putStr "Ingrese el nombre del libro: "
    libro <- getLine
    appendFile "libros.txt" (libro ++ "\n")
    putStrLn "Libro agregado con éxito."

-- mostrar lista de libros
verLibros :: IO ()
verLibros = do
    putStrLn "\nLista de libros:"
    contenido <- readFile "libros.txt"
    putStrLn contenido

-- mostrar registro de préstamos
verRegistroPrestamos :: IO ()
verRegistroPrestamos = do
    putStrLn "\nRegistro de préstamos:"
    contenido <- readFile "prestamos.txt"
    putStrLn contenido

verRegistroDevolucion :: IO ()
verRegistroDevolucion = do
    putStrLn "\nLista de registros :"
    contenido <- readFile "devoluciones.txt"
    putStrLn contenido


-- fncion para obtener la hora actual
obtenerHora :: IO String
obtenerHora = do
    tiempo <- getCurrentTime
    return (formatTime defaultTimeLocale "%Y-%m-%d %H:%M:%S" tiempo)
