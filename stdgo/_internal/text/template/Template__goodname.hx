package stdgo._internal.text.template;
function _goodName(_name:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L125"
        if (_name == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L126"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L128"
        for (_i => _r in _name) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L129"
            if (_r == ((95 : stdgo.GoInt32))) {} else if (((_i == (0 : stdgo.GoInt)) && !stdgo._internal.unicode.Unicode_isletter.isLetter(_r) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L132"
                return false;
            } else if ((!stdgo._internal.unicode.Unicode_isletter.isLetter(_r) && !stdgo._internal.unicode.Unicode_isdigit.isDigit(_r) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L134"
                return false;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L137"
        return true;
    }
