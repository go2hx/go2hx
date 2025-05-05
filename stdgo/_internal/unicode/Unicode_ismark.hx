package stdgo._internal.unicode;
function isMark(_r:stdgo.GoInt32):Bool {
        //"file:///home/runner/.go/go1.21.3/src/unicode/graphic.go#L100"
        return stdgo._internal.unicode.Unicode__isexcludinglatin._isExcludingLatin(stdgo._internal.unicode.Unicode_mark.mark, _r);
    }
