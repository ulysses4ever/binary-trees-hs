all: build

build:
	ghc  -fforce-recomp -fllvm -O2 -XBangPatterns -threaded -rtsopts -package parallel -o binary-trees binary-trees.hs

run:
	./binary-trees +RTS -N4 -K128M -H -RTS 21
