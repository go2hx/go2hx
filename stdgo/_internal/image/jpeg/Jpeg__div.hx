package stdgo._internal.image.jpeg;
function _div(_a:stdgo.GoInt32, _b:stdgo.GoInt32):stdgo.GoInt32 {
        if ((_a >= (0 : stdgo.GoInt32) : Bool)) {
            return (((_a + ((_b >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt32)) : stdgo.GoInt32)) / _b : stdgo.GoInt32);
        };
        return -((((-_a + ((_b >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt32)) : stdgo.GoInt32)) / _b : stdgo.GoInt32));
    }
