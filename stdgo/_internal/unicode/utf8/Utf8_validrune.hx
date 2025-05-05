package stdgo._internal.unicode.utf8;
function validRune(_r:stdgo.GoInt32):Bool {
        //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L576"
        if ((((0 : stdgo.GoInt32) <= _r : Bool) && (_r < (55296 : stdgo.GoInt32) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L578"
            return true;
        } else if ((((57343 : stdgo.GoInt32) < _r : Bool) && (_r <= (1114111 : stdgo.GoInt32) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L580"
            return true;
        };
        //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L582"
        return false;
    }
