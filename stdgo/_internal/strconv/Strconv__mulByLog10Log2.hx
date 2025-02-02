package stdgo._internal.strconv;
function _mulByLog10Log2(_x:stdgo.GoInt):stdgo.GoInt {
        return (((_x * (108853 : stdgo.GoInt) : stdgo.GoInt)) >> (15i64 : stdgo.GoUInt64) : stdgo.GoInt);
    }
