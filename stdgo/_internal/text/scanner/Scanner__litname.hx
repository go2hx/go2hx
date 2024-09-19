package stdgo._internal.text.scanner;
function _litname(_prefix:stdgo.GoInt32):stdgo.GoString {
        {
            final __value__ = _prefix;
            if (__value__ == ((120 : stdgo.GoInt32))) {
                return ("hexadecimal literal" : stdgo.GoString);
            } else if (__value__ == ((111 : stdgo.GoInt32)) || __value__ == ((48 : stdgo.GoInt32))) {
                return ("octal literal" : stdgo.GoString);
            } else if (__value__ == ((98 : stdgo.GoInt32))) {
                return ("binary literal" : stdgo.GoString);
            } else {
                return ("decimal literal" : stdgo.GoString);
            };
        };
    }
