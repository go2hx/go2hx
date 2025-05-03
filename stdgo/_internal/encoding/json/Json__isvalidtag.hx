package stdgo._internal.encoding.json;
function _isValidTag(_s:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L907"
        if (_s == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L908"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L910"
        for (__4 => _c in _s) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L911"
            if (stdgo._internal.strings.Strings_containsrune.containsRune(("!#$%&()*+-./:;<=>?@[]^_{|}~ " : stdgo.GoString), _c)) {} else if ((!stdgo._internal.unicode.Unicode_isletter.isLetter(_c) && !stdgo._internal.unicode.Unicode_isdigit.isDigit(_c) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L917"
                return false;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L920"
        return true;
    }
