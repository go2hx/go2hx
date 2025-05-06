package stdgo._internal.go.token;
function isIdentifier(_name:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/token/token.go#L332"
        if (((_name == (stdgo.Go.str() : stdgo.GoString)) || stdgo._internal.go.token.Token_iskeyword.isKeyword(_name?.__copy__()) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/token/token.go#L333"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/token/token.go#L335"
        for (_i => _c in _name) {
            //"file:///home/runner/.go/go1.21.3/src/go/token/token.go#L336"
            if (((!stdgo._internal.unicode.Unicode_isletter.isLetter(_c) && _c != ((95 : stdgo.GoInt32)) : Bool) && (((_i == (0 : stdgo.GoInt)) || !stdgo._internal.unicode.Unicode_isdigit.isDigit(_c) : Bool)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/token/token.go#L337"
                return false;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/token/token.go#L340"
        return true;
    }
