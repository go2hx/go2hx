package stdgo._internal.image.jpeg;
import stdgo._internal.image.color.Color;
import stdgo._internal.image.Image;
import stdgo._internal.errors.Errors;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.io.Io;
import stdgo._internal.image.internal.imageutil.Imageutil;
function _div(_a:stdgo.GoInt32, _b:stdgo.GoInt32):stdgo.GoInt32 {
        if ((_a >= (0 : stdgo.GoInt32) : Bool)) {
            return (((_a + ((_b >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt32)) : stdgo.GoInt32)) / _b : stdgo.GoInt32);
        };
        return -((((-_a + ((_b >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt32)) : stdgo.GoInt32)) / _b : stdgo.GoInt32));
    }
