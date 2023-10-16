module Test where

import ParGrammar
import Prelude

parse = pProgram . myLexer

foo :: IO ()
foo = print (parse "#include<foo>") >> print "end"
