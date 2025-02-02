package stdgo._internal.regexp.syntax;
function _isValidCaptureName(_name:stdgo.GoString):Bool {
        if (_name == ((stdgo.Go.str() : stdgo.GoString))) {
            return false;
        };
        for (__1 => _c in _name) {
            if (((_c != (95 : stdgo.GoInt32)) && !stdgo._internal.regexp.syntax.Syntax__isalnum._isalnum(_c) : Bool)) {
                return false;
            };
        };
        return true;
    }
