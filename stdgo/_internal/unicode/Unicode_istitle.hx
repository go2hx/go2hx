package stdgo._internal.unicode;
function isTitle(_r:stdgo.GoInt32):Bool {
        if ((_r <= (255 : stdgo.GoInt32) : Bool)) {
            return false;
        };
        return stdgo._internal.unicode.Unicode__isexcludinglatin._isExcludingLatin(stdgo._internal.unicode.Unicode_title.title, _r);
    }
