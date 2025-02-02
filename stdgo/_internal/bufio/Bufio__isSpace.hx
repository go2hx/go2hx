package stdgo._internal.bufio;
function _isSpace(_r:stdgo.GoInt32):Bool {
        if ((_r <= (255 : stdgo.GoInt32) : Bool)) {
            {
                final __value__ = _r;
                if (__value__ == ((32 : stdgo.GoInt32)) || __value__ == ((9 : stdgo.GoInt32)) || __value__ == ((10 : stdgo.GoInt32)) || __value__ == ((11 : stdgo.GoInt32)) || __value__ == ((12 : stdgo.GoInt32)) || __value__ == ((13 : stdgo.GoInt32))) {
                    return true;
                } else if (__value__ == ((133 : stdgo.GoInt32)) || __value__ == ((160 : stdgo.GoInt32))) {
                    return true;
                };
            };
            return false;
        };
        if ((((8192 : stdgo.GoInt32) <= _r : Bool) && (_r <= (8202 : stdgo.GoInt32) : Bool) : Bool)) {
            return true;
        };
        {
            final __value__ = _r;
            if (__value__ == ((5760 : stdgo.GoInt32)) || __value__ == ((8232 : stdgo.GoInt32)) || __value__ == ((8233 : stdgo.GoInt32)) || __value__ == ((8239 : stdgo.GoInt32)) || __value__ == ((8287 : stdgo.GoInt32)) || __value__ == ((12288 : stdgo.GoInt32))) {
                return true;
            };
        };
        return false;
    }
