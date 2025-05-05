package stdgo._internal.unicode;
function toUpper(_r:stdgo.GoInt32):stdgo.GoInt32 {
        //"file:///home/runner/.go/go1.21.3/src/unicode/letter.go#L255"
        if ((_r <= (127 : stdgo.GoInt32) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/unicode/letter.go#L256"
            if ((((97 : stdgo.GoInt32) <= _r : Bool) && (_r <= (122 : stdgo.GoInt32) : Bool) : Bool)) {
                _r = (_r - ((32 : stdgo.GoInt32)) : stdgo.GoInt32);
            };
            //"file:///home/runner/.go/go1.21.3/src/unicode/letter.go#L259"
            return _r;
        };
        //"file:///home/runner/.go/go1.21.3/src/unicode/letter.go#L261"
        return stdgo._internal.unicode.Unicode_to.to((0 : stdgo.GoInt), _r);
    }
