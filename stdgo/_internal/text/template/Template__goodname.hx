package stdgo._internal.text.template;
function _goodName(_name:stdgo.GoString):Bool {
        if (_name == ((stdgo.Go.str() : stdgo.GoString))) {
            return false;
        };
        for (_i => _r in _name) {
            if (_r == ((95 : stdgo.GoInt32))) {} else if (((_i == (0 : stdgo.GoInt)) && !stdgo._internal.unicode.Unicode_isletter.isLetter(_r) : Bool)) {
                return false;
            } else if ((!stdgo._internal.unicode.Unicode_isletter.isLetter(_r) && !stdgo._internal.unicode.Unicode_isdigit.isDigit(_r) : Bool)) {
                return false;
            };
        };
        return true;
    }
