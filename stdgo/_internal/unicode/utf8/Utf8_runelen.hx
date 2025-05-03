package stdgo._internal.unicode.utf8;
function runeLen(_r:stdgo.GoInt32):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L322"
        if ((_r < (0 : stdgo.GoInt32) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L324"
            return (-1 : stdgo.GoInt);
        } else if ((_r <= (127 : stdgo.GoInt32) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L326"
            return (1 : stdgo.GoInt);
        } else if ((_r <= (2047 : stdgo.GoInt32) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L328"
            return (2 : stdgo.GoInt);
        } else if ((((55296 : stdgo.GoInt32) <= _r : Bool) && (_r <= (57343 : stdgo.GoInt32) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L330"
            return (-1 : stdgo.GoInt);
        } else if ((_r <= (65535 : stdgo.GoInt32) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L332"
            return (3 : stdgo.GoInt);
        } else if ((_r <= (1114111 : stdgo.GoInt32) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L334"
            return (4 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L336"
        return (-1 : stdgo.GoInt);
    }
