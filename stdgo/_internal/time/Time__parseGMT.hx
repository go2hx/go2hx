package stdgo._internal.time;
import stdgo._internal.unsafe.Unsafe;
function _parseGMT(_value:stdgo.GoString):stdgo.GoInt {
        _value = (_value.__slice__((3 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        if ((_value.length) == ((0 : stdgo.GoInt))) {
            return (3 : stdgo.GoInt);
        };
        return ((3 : stdgo.GoInt) + stdgo._internal.time.Time__parseSignedOffset._parseSignedOffset(_value?.__copy__()) : stdgo.GoInt);
    }