# Compiler

## Commands

- alex lex.x -o gen/lex.hs
- ghc -i gen/lex.hs test -odir bin/ -hidir bin/ -o bin/test
- happy parse.y -o gen/parse.hs

## ghci

- :load gen/lex.hs
- import Lex

## Resources

- https://www.cse.chalmers.se/edu/year/2018/course/TDA283/resources/
- https://haskell-alex.readthedocs.io/en/latest/index.html
- https://haskell-happy.readthedocs.io/en/latest/introduction.html
