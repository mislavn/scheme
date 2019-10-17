module Main where
import System.Environment

main :: IO ()
main = do
    args <- getArgs
    print(show $ read (head args)  + read (args !! 1))

