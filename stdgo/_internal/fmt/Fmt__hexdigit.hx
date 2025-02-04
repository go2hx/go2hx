package stdgo._internal.fmt;
function _hexDigit(_d:stdgo.GoInt32):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        var _digit = (_d : stdgo.GoInt);
        {
            final __value__ = _digit;
            if (__value__ == ((48 : stdgo.GoInt)) || __value__ == ((49 : stdgo.GoInt)) || __value__ == ((50 : stdgo.GoInt)) || __value__ == ((51 : stdgo.GoInt)) || __value__ == ((52 : stdgo.GoInt)) || __value__ == ((53 : stdgo.GoInt)) || __value__ == ((54 : stdgo.GoInt)) || __value__ == ((55 : stdgo.GoInt)) || __value__ == ((56 : stdgo.GoInt)) || __value__ == ((57 : stdgo.GoInt))) {
                return { _0 : (_digit - (48 : stdgo.GoInt) : stdgo.GoInt), _1 : true };
            } else if (__value__ == ((97 : stdgo.GoInt)) || __value__ == ((98 : stdgo.GoInt)) || __value__ == ((99 : stdgo.GoInt)) || __value__ == ((100 : stdgo.GoInt)) || __value__ == ((101 : stdgo.GoInt)) || __value__ == ((102 : stdgo.GoInt))) {
                return { _0 : (((10 : stdgo.GoInt) + _digit : stdgo.GoInt) - (97 : stdgo.GoInt) : stdgo.GoInt), _1 : true };
            } else if (__value__ == ((65 : stdgo.GoInt)) || __value__ == ((66 : stdgo.GoInt)) || __value__ == ((67 : stdgo.GoInt)) || __value__ == ((68 : stdgo.GoInt)) || __value__ == ((69 : stdgo.GoInt)) || __value__ == ((70 : stdgo.GoInt))) {
                return { _0 : (((10 : stdgo.GoInt) + _digit : stdgo.GoInt) - (65 : stdgo.GoInt) : stdgo.GoInt), _1 : true };
            };
        };
        return { _0 : (-1 : stdgo.GoInt), _1 : false };
    }
