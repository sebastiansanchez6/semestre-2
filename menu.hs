module Main where
import Admin
import Usuario

main :: IO ()
main = do
    putStrLn "+++++Biblioteca Virtual +++++"
    putStrLn "1.   Panel de Usuario"
    putStrLn "2.  Panel de Administrador"
    putStrLn "3. Salir"
    putStr "Seleccione una opcion: "
    opcion <- getLine
    case opcion of
        "1" -> menuUsuario
        "2" -> menuAdmin
        "3" -> putStrLn "Fin del codigo"
        _   -> do
            putStrLn "Opcion invalida"
            main
