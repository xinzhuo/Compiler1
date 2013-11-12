#! /bin/bash
./dcc <samples/bad1.decaf >& selfresult/bad1.out
./dcc <samples/bad2.decaf >& selfresult/bad2.out
./dcc <samples/bad3.decaf >& selfresult/bad3.out
./dcc <samples/bad4.decaf >& selfresult/bad4.out
./dcc <samples/bad5.decaf >& selfresult/bad5.out
./dcc <samples/bad6.decaf >& selfresult/bad6.out
./dcc <samples/bad7.decaf >& selfresult/bad7.out
./dcc <samples/bad8.decaf >& selfresult/bad8.out
./dcc <samples/bad9.decaf >& selfresult/bad9.out
./dcc <samples/bad10.decaf >& selfresult/bad10.out
./dcc <samples/bad11.decaf >& selfresult/bad11.out
./dcc <samples/bad12.decaf >& selfresult/bad12.out
./dcc <samples/matrix.decaf >& selfresult/matrix.out
./dcc <samples/new.decaf >& selfresult/new.out
./dcc <samples/queue.decaf >& selfresult/queue.out
./dcc <samples/stack.decaf >& selfresult/stack.out
./dcc <samples/bad3.decaf >& selfresult/bad3.out
for i in $( ls selfresult ); do
            diff selfresult/$i samples/$i
        done