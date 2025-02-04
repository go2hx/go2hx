package stdgo._internal.time;
function _parseGMT(_value:stdgo.GoString):stdgo.GoInt {
        _value = (_value.__slice__((3 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        if ((_value.length) == ((0 : stdgo.GoInt))) {
            return (3 : stdgo.GoInt);
        };
        return ((3 : stdgo.GoInt) + stdgo._internal.time.Time__parsesignedoffset._parseSignedOffset(_value?.__copy__()) : stdgo.GoInt);
    }
