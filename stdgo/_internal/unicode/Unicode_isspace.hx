package stdgo._internal.unicode;
function isSpace(_r:stdgo.GoInt32):Bool {
        //"file:///home/runner/.go/go1.21.3/src/unicode/graphic.go#L130"
        if (((_r : stdgo.GoUInt32) <= (255u32 : stdgo.GoUInt32) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/unicode/graphic.go#L131"
            {
                final __value__ = _r;
                if (__value__ == ((9 : stdgo.GoInt32)) || __value__ == ((10 : stdgo.GoInt32)) || __value__ == ((11 : stdgo.GoInt32)) || __value__ == ((12 : stdgo.GoInt32)) || __value__ == ((13 : stdgo.GoInt32)) || __value__ == ((32 : stdgo.GoInt32)) || __value__ == ((133 : stdgo.GoInt32)) || __value__ == ((160 : stdgo.GoInt32))) {
                    //"file:///home/runner/.go/go1.21.3/src/unicode/graphic.go#L133"
                    return true;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/unicode/graphic.go#L135"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/unicode/graphic.go#L137"
        return stdgo._internal.unicode.Unicode__isexcludinglatin._isExcludingLatin(stdgo._internal.unicode.Unicode_white_space.white_Space, _r);
    }
