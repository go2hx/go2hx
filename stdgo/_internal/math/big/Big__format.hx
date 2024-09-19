package stdgo._internal.math.big;
function _format(_base:stdgo.GoInt):stdgo.GoString {
        {
            final __value__ = _base;
            if (__value__ == ((2 : stdgo.GoInt))) {
                return ("%b" : stdgo.GoString);
            } else if (__value__ == ((8 : stdgo.GoInt))) {
                return ("%o" : stdgo.GoString);
            } else if (__value__ == ((16 : stdgo.GoInt))) {
                return ("%x" : stdgo.GoString);
            };
        };
        return ("%d" : stdgo.GoString);
    }
