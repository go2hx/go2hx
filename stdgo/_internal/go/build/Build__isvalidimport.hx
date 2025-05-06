package stdgo._internal.go.build;
function _isValidImport(_s:stdgo.GoString):Bool {
        {};
        //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L533"
        for (__0 => _r in _s) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L534"
            if (((!stdgo._internal.unicode.Unicode_isgraphic.isGraphic(_r) || stdgo._internal.unicode.Unicode_isspace.isSpace(_r) : Bool) || stdgo._internal.strings.Strings_containsrune.containsRune(("!\"#$%&\'()*,:;<=>?[\\]^{|}`�" : stdgo.GoString), _r) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L535"
                return false;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L538"
        return _s != ((stdgo.Go.str() : stdgo.GoString));
    }
