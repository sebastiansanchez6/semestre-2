construirLista :: Int -> [Int]
construirLista n = go n []
  where
    go 0 xs = xs
    go m xs = go (m - 1) (m : xs)
