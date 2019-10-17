module Main where
import System.Environment

main :: IO ()
main = do
    putStrLn "Please entere you name"
    name <- getLine
    print $ "your name is " ++ name

