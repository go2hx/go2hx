package stdgo._internal.encoding.json;
function _isValidTag(_s:stdgo.GoString):Bool {
        if (_s == ((stdgo.Go.str() : stdgo.GoString))) {
            return false;
        };
        for (__4 => _c in _s) {
            if (stdgo._internal.strings.Strings_containsrune.containsRune(("!#$%&()*+-./:;<=>?@[]^_{|}~ " : stdgo.GoString), _c)) {} else if ((!stdgo._internal.unicode.Unicode_isletter.isLetter(_c) && !stdgo._internal.unicode.Unicode_isdigit.isDigit(_c) : Bool)) {
                return false;
            };
        };
        return true;
    }
