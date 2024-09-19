package stdgo._internal.net.http;
function _valueOrDefault(_value:stdgo.GoString, _def:stdgo.GoString):stdgo.GoString {
        if (_value != (stdgo.Go.str())) {
            return _value?.__copy__();
        };
        return _def?.__copy__();
    }
