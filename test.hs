import Foo
import Lex

main :: IO ()
main = print foobar >> print (alexScanTokens "foo = 100") >> print "end"
