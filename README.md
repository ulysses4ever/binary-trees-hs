# benchmarks game

## binary-trees

Reference implementation:
```
$ ghc -fforce-recomp -fllvm -O2 -XBangPatterns -threaded -rtsopts -package parallel binary-trees.orig.hs -o binary-trees
...
$ time ./binary-trees +RTS -N4 -K128M -H -RTS 21
stretch tree of depth 22	 check: 8388607
2097152	 trees of depth 4	 check: 65011712
524288	 trees of depth 6	 check: 66584576
131072	 trees of depth 8	 check: 66977792
32768	 trees of depth 10	 check: 67076096
8192	 trees of depth 12	 check: 67100672
2048	 trees of depth 14	 check: 67106816
512	 trees of depth 16	 check: 67108352
128	 trees of depth 18	 check: 67108736
32	 trees of depth 20	 check: 67108832
long lived tree of depth 21	 check: 4194303

real	0m6,414s
user	0m17,658s
sys	0m5,735s
```

Our improvement:
```
$ ghc  -fforce-recomp -fllvm -O2 -XBangPatterns -threaded -rtsopts -package parallel binary-trees.hs -o binary-trees
 ...
$ time ./binary-trees +RTS -N4 -K128M -H -RTS 21
stretch tree of depth 22	 check: 8388607
2097152	 trees of depth 4	 check: 65011712
524288	 trees of depth 6	 check: 66584576
131072	 trees of depth 8	 check: 66977792
32768	 trees of depth 10	 check: 67076096
8192	 trees of depth 12	 check: 67100672
2048	 trees of depth 14	 check: 67106816
512	 trees of depth 16	 check: 67108352
128	 trees of depth 18	 check: 67108736
32	 trees of depth 20	 check: 67108832
long lived tree of depth 21	 check: 4194303

real	0m4,528s
user	0m13,977s
sys	0m2,961s

```
