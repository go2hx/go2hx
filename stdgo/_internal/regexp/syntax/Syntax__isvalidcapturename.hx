package stdgo._internal.regexp.syntax;
function _isValidCaptureName(_name:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1257"
        if (_name == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1258"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1260"
        for (__1 => _c in _name) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1261"
            if (((_c != (95 : stdgo.GoInt32)) && !stdgo._internal.regexp.syntax.Syntax__isalnum._isalnum(_c) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1262"
                return false;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1265"
        return true;
    }
