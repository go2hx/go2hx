package stdgo._internal.strings;
function _isSeparator(_r:stdgo.GoInt32):Bool {
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L756"
        if ((_r <= (127 : stdgo.GoInt32) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L757"
            if ((((48 : stdgo.GoInt32) <= _r : Bool) && (_r <= (57 : stdgo.GoInt32) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L759"
                return false;
            } else if ((((97 : stdgo.GoInt32) <= _r : Bool) && (_r <= (122 : stdgo.GoInt32) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L761"
                return false;
            } else if ((((65 : stdgo.GoInt32) <= _r : Bool) && (_r <= (90 : stdgo.GoInt32) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L763"
                return false;
            } else if (_r == ((95 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L765"
                return false;
            };
            //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L767"
            return true;
        };
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L770"
        if ((stdgo._internal.unicode.Unicode_isletter.isLetter(_r) || stdgo._internal.unicode.Unicode_isdigit.isDigit(_r) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L771"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L774"
        return stdgo._internal.unicode.Unicode_isspace.isSpace(_r);
    }
