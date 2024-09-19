package stdgo._internal.net.http.httputil;
function _valueOrDefault(_value:stdgo.GoString, _def:stdgo.GoString):stdgo.GoString {
        if (_value != (stdgo.Go.str())) {
            return _value?.__copy__();
        };
        return _def?.__copy__();
    }
