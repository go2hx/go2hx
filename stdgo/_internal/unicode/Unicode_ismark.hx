package stdgo._internal.unicode;
function isMark(_r:stdgo.GoInt32):Bool {
        return stdgo._internal.unicode.Unicode__isexcludinglatin._isExcludingLatin(stdgo._internal.unicode.Unicode_mark.mark, _r);
    }
