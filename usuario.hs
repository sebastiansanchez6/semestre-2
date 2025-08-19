module Usuario where
import Data.Time (getCurrentTime, formatTime, defaultTimeLocale)

-- menu del usuario cristobal 
menuUsuario :: IO ()
menuUsuario = do
    putStrLn "\n=== Panel de Usuario ==="
    putStrLn "1. Ver libros disponibles"
    putStrLn "2. Solicitar un libro"
    putStrLn "3. Devolver un libro"
    putStrLn "4. Volver al menú principal"
    putStr "Seleccione una opción: "
    opcion <- getLine
    case opcion of
        "1" -> do
            verLibros
            menuUsuario
        "2" -> do
            solicitarLibro
            menuUsuario
        "3" -> do
            devolverLibro
            menuUsuario
        "4" -> return ()
        
        _   -> do
            putStrLn "Opción inválida"
            menuUsuario

-- mostrar libros disponibles con ID
verLibros :: IO ()
verLibros = do
    putStrLn "\nLibros disponibles:"
    contenido <- readFile "libros.txt"
    let lista = lines contenido
    mapM_ (\(i, libro) -> putStrLn (show i ++ ". " ++ libro)) (zip [1..] lista)

-- Solicitar libro (por ID + credencial)
solicitarLibro :: IO ()
solicitarLibro = do
    contenido <- readFile "libros.txt"
    let lista = lines contenido
    if null lista
        then putStrLn "no hay libros disponibles"
        else do
            verLibros
            putStr "Ingrese el numero  del libro que desea solicitar "
            idStr <- getLine
            let idNum = read idStr :: Int
            if idNum > 0 && idNum <= length lista
                then do
                    let libro = lista !! (idNum - 1)
                    putStr "Ingrese su carnet: "
                    carnet <- getLine
                    hora <- obtenerHora
                    appendFile "prestamos.txt" (libro ++ " | carnet " ++ carnet ++ " | Prestado a las " ++ hora ++ "\n")
                    writeFile "libros.txt" (unlines (filter (/= libro) lista))
                    putStrLn $ "Libro '" ++ libro ++ "' prestado con éxito a el carnet " ++ carnet ++ "."
                else
                    putStrLn " invalido."

-- Devolver libro 
devolverLibro :: IO ()
devolverLibro = do
    prestamos <- readFile "prestamos.txt"
    let lista = lines prestamos
    if null lista
        then putStrLn "Noo hay libros prestados"
        else do
            putStrLn "\nLibros prestados:"
            mapM_ (\(i, linea) -> putStrLn (show i ++ ". " ++ linea)) (zip [1..] lista)
            putStr "Ingrese el numero del libro que desea devolver: "
            idStr <- getLine
            let idNum = read idStr :: Int
            if idNum > 0 && idNum <= length lista
                then do
                    let linea = lista !! (idNum - 1)
                    let libro = takeWhile (/= '|') linea
                    putStr "Ingrese su carnet: "
                    carnet <- getLine
                    hora <- obtenerHora
                    appendFile "libros.txt" (libro ++ "\n")
                    appendFile "devoluciones.txt" (libro ++ " | carnet: " ++ carnet ++ " | Devuelto a las " ++ hora ++ "\n")
                    putStrLn $ "Libro '" ++ libro ++ "' devuelto con éxito por la carnet " ++ carnet ++ "."
                else
                    putStrLn "ID inválido."

-- Obtener hora actual
obtenerHora :: IO String
obtenerHora = do
    tiempo <- getCurrentTime
    return (formatTime defaultTimeLocale "%Y-%m-%d %H:%M:%S" tiempo)
