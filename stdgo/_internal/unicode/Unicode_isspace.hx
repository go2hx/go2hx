package stdgo._internal.unicode;
function isSpace(_r:stdgo.GoInt32):Bool {
        if (((_r : stdgo.GoUInt32) <= (255u32 : stdgo.GoUInt32) : Bool)) {
            {
                final __value__ = _r;
                if (__value__ == ((9 : stdgo.GoInt32)) || __value__ == ((10 : stdgo.GoInt32)) || __value__ == ((11 : stdgo.GoInt32)) || __value__ == ((12 : stdgo.GoInt32)) || __value__ == ((13 : stdgo.GoInt32)) || __value__ == ((32 : stdgo.GoInt32)) || __value__ == ((133 : stdgo.GoInt32)) || __value__ == ((160 : stdgo.GoInt32))) {
                    return true;
                };
            };
            return false;
        };
        return stdgo._internal.unicode.Unicode__isexcludinglatin._isExcludingLatin(stdgo._internal.unicode.Unicode_white_space.white_Space, _r);
    }
