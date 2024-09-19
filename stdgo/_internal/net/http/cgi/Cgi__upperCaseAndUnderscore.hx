package stdgo._internal.net.http.cgi;
function _upperCaseAndUnderscore(_r:stdgo.GoInt32):stdgo.GoInt32 {
        if (((_r >= (97 : stdgo.GoInt32) : Bool) && (_r <= (122 : stdgo.GoInt32) : Bool) : Bool)) {
            return (_r - (32 : stdgo.GoInt32) : stdgo.GoInt32);
        } else if (_r == ((45 : stdgo.GoInt32))) {
            return (95 : stdgo.GoInt32);
        } else if (_r == ((61 : stdgo.GoInt32))) {
            return (95 : stdgo.GoInt32);
        };
        return _r;
    }
