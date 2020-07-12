all: build

build:
	ghc  -fforce-recomp -fllvm -O2 -XBangPatterns -threaded -rtsopts -package parallel binary-trees.hs

run:
	time ./binary-trees +RTS -N4 -K128M -H -A64m -RTS 21
