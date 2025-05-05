package stdgo._internal.unicode;
function toLower(_r:stdgo.GoInt32):stdgo.GoInt32 {
        //"file:///home/runner/.go/go1.21.3/src/unicode/letter.go#L266"
        if ((_r <= (127 : stdgo.GoInt32) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/unicode/letter.go#L267"
            if ((((65 : stdgo.GoInt32) <= _r : Bool) && (_r <= (90 : stdgo.GoInt32) : Bool) : Bool)) {
                _r = (_r + ((32 : stdgo.GoInt32)) : stdgo.GoInt32);
            };
            //"file:///home/runner/.go/go1.21.3/src/unicode/letter.go#L270"
            return _r;
        };
        //"file:///home/runner/.go/go1.21.3/src/unicode/letter.go#L272"
        return stdgo._internal.unicode.Unicode_to.to((1 : stdgo.GoInt), _r);
    }
