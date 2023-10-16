module Test where

import ParGrammar
import Prelude

parse = pProgram . myLexer

parseFile file = parse <$> readFile file

t1 = parseFile "test/test1.cc"

foo :: IO ()
foo = print (parse "#include<foo>") >> print "end"
