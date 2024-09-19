package stdgo._internal.mime.quotedprintable;
function _isQPDiscardWhitespace(_r:stdgo.GoInt32):Bool {
        {
            final __value__ = _r;
            if (__value__ == ((10 : stdgo.GoInt32)) || __value__ == ((13 : stdgo.GoInt32)) || __value__ == ((32 : stdgo.GoInt32)) || __value__ == ((9 : stdgo.GoInt32))) {
                return true;
            };
        };
        return false;
    }
