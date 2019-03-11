import System.Directory
import System.Environment
import Data.List.Split

main = do 
    args <- getArgs
    lis <- getDirectoryContents $ head args
    mapM_ print $ map head $ map (splitOn "." ) lis 
