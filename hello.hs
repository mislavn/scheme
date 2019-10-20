module Main where
import System.Environment
import Text.ParserCombinators.Parsec hiding (spcaes)

data LispVal = Atom String
            | List [LispVal]
            | DottedList [LispVal] [LispVal]
            | Number Integer
            | String String
            | Bool Bool

symbol :: Parser Char
symbol = oneOf "!$%&|*+-/:<=?>@^_~#"

readExpr :: String -> String
readExpr input = case parse (spaces2 >> symbol) "lisp" input of
    Left err -> "No match: " ++ show err
    Right val -> "Found value"

spaces2 :: Parser ()
spaces2 = skipMany1 space

main :: IO ()
main = do
    args <- getArgs
    putStrLn (readExpr (head args))

