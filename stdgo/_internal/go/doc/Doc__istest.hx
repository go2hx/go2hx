package stdgo._internal.go.doc;
function _isTest(_name:stdgo.GoString, _prefix:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L140"
        if (!stdgo._internal.strings.Strings_hasprefix.hasPrefix(_name?.__copy__(), _prefix?.__copy__())) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L141"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L143"
        if ((_name.length) == ((_prefix.length))) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L144"
            return true;
        };
        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString((_name.__slice__((_prefix.length)) : stdgo.GoString)?.__copy__()), _rune:stdgo.GoInt32 = __tmp__._0, __0:stdgo.GoInt = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L147"
        return !stdgo._internal.unicode.Unicode_islower.isLower(_rune);
    }
