{
module Lex (lex, Token, alexScanTokens) where
}

%wrapper "basic"

$digit = 0-9            -- digits
$alpha = [a-zA-Z]       -- alphabetic characters

tokens :-

  $white+                        ;
  "--".*                         ;
  let                            { \s -> TokenLet }
  in                             { \s -> TokenIn }
  $digit+                        { \s -> TokenInt (read s) }
  \=  { \s -> TokenEq }
  \+  { \s -> TokenPlus }
  \-  { \s -> TokenMinus }
  \*  { \s -> TokenStar }
  \/  { \s -> TokenDiv }
  \(  { \s -> TokenOB }
  \)  { \s -> TokenCB }
  $alpha [$alpha $digit \_]*     { \s -> TokenVar s }

{
-- Each action has type :: String -> Token

-- The token type:
data Token
  = TokenLet
  | TokenIn
  | TokenEq
  | TokenPlus
  | TokenMinus
  | TokenStar
  | TokenDiv
  | TokenOB
  | TokenCB
  | TokenVar String
  | TokenInt Int
  deriving (Eq, Show)

main = do
  s <- getContents
  print (alexScanTokens s)
}
