all: build

build:
	ghc -fllvm -O2 -threaded -rtsopts -package parallel  binary-trees.hs

run:
	time ./binary-trees +RTS -N4 -K128M -H -RTS 21
