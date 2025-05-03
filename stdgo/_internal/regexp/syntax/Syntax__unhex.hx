package stdgo._internal.regexp.syntax;
function _unhex(_c:stdgo.GoInt32):stdgo.GoInt32 {
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L2105"
        if ((((48 : stdgo.GoInt32) <= _c : Bool) && (_c <= (57 : stdgo.GoInt32) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L2106"
            return (_c - (48 : stdgo.GoInt32) : stdgo.GoInt32);
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L2108"
        if ((((97 : stdgo.GoInt32) <= _c : Bool) && (_c <= (102 : stdgo.GoInt32) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L2109"
            return ((_c - (97 : stdgo.GoInt32) : stdgo.GoInt32) + (10 : stdgo.GoInt32) : stdgo.GoInt32);
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L2111"
        if ((((65 : stdgo.GoInt32) <= _c : Bool) && (_c <= (70 : stdgo.GoInt32) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L2112"
            return ((_c - (65 : stdgo.GoInt32) : stdgo.GoInt32) + (10 : stdgo.GoInt32) : stdgo.GoInt32);
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L2114"
        return (-1 : stdgo.GoInt32);
    }
