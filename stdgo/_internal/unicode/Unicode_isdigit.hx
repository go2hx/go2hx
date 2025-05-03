package stdgo._internal.unicode;
function isDigit(_r:stdgo.GoInt32):Bool {
        //"file:///home/runner/.go/go1.21.3/src/unicode/digit.go#L9"
        if ((_r <= (255 : stdgo.GoInt32) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/unicode/digit.go#L10"
            return (((48 : stdgo.GoInt32) <= _r : Bool) && (_r <= (57 : stdgo.GoInt32) : Bool) : Bool);
        };
        //"file:///home/runner/.go/go1.21.3/src/unicode/digit.go#L12"
        return stdgo._internal.unicode.Unicode__isexcludinglatin._isExcludingLatin(stdgo._internal.unicode.Unicode_digit.digit, _r);
    }
