package stdgo._internal.bytes;
function _isSeparator(_r:stdgo.GoInt32):Bool {
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L763"
        if ((_r <= (127 : stdgo.GoInt32) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L764"
            if ((((48 : stdgo.GoInt32) <= _r : Bool) && (_r <= (57 : stdgo.GoInt32) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L766"
                return false;
            } else if ((((97 : stdgo.GoInt32) <= _r : Bool) && (_r <= (122 : stdgo.GoInt32) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L768"
                return false;
            } else if ((((65 : stdgo.GoInt32) <= _r : Bool) && (_r <= (90 : stdgo.GoInt32) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L770"
                return false;
            } else if (_r == ((95 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L772"
                return false;
            };
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L774"
            return true;
        };
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L777"
        if ((stdgo._internal.unicode.Unicode_isletter.isLetter(_r) || stdgo._internal.unicode.Unicode_isdigit.isDigit(_r) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L778"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L781"
        return stdgo._internal.unicode.Unicode_isspace.isSpace(_r);
    }
