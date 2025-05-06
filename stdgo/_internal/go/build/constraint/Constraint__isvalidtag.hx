package stdgo._internal.go.build.constraint;
function _isValidTag(_word:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L436"
        if (_word == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L437"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L439"
        for (__0 => _c in _word) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L440"
            if ((((!stdgo._internal.unicode.Unicode_isletter.isLetter(_c) && !stdgo._internal.unicode.Unicode_isdigit.isDigit(_c) : Bool) && _c != ((95 : stdgo.GoInt32)) : Bool) && (_c != (46 : stdgo.GoInt32)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L441"
                return false;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L444"
        return true;
    }
