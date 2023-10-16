# Compiler

## Installation

- choco install cabal
- cabal install alex
- cabal install happy
- cabal install BNFC

## Commands

- bnfc grammar.cf -o gen/
- alex gen/LexGrammar.x
- happy gen/ParGrammar.y

### Outdated

- ghc -i gen/lex.hs test -odir bin/ -hidir bin/ -o bin/test

## ghci

- ghci -i gen/*.hs
- :reload
- import ParGrammar
- pExpr $ myLexer "1+1"

## Resources

- https://www.cse.chalmers.se/edu/year/2020/course/DAT151/
- https://www.cse.chalmers.se/edu/year/2018/course/TDA283/resources/
- https://bnfc.readthedocs.io/en/latest/
- https://haskell-alex.readthedocs.io/en/latest/index.html
- https://haskell-happy.readthedocs.io/en/latest/introduction.html
