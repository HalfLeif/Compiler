set -e

bnfc grammar.cf -o gen/
alex gen/LexGrammar.x
happy gen/ParGrammar.y

echo "Success."
