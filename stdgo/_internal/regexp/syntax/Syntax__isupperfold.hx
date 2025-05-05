package stdgo._internal.regexp.syntax;
function _isUpperFold(_r:stdgo.GoInt32):Bool {
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse_test.go#L412"
        if (stdgo._internal.unicode.Unicode_isupper.isUpper(_r)) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse_test.go#L413"
            return true;
        };
        var _c = (stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r) : stdgo.GoInt32);
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse_test.go#L416"
        while (_c != (_r)) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse_test.go#L417"
            if (stdgo._internal.unicode.Unicode_isupper.isUpper(_c)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse_test.go#L418"
                return true;
            };
            _c = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_c);
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse_test.go#L422"
        return false;
    }
