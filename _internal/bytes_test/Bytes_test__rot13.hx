package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function _rot13(_r:stdgo.GoInt32):stdgo.GoInt32 {
        {};
        if (((_r >= (97 : stdgo.GoInt32) : Bool) && (_r <= (122 : stdgo.GoInt32) : Bool) : Bool)) {
            return ((((((_r - (97 : stdgo.GoInt32) : stdgo.GoInt32) + (13 : stdgo.GoInt32) : stdgo.GoInt32)) % (26 : stdgo.GoInt32) : stdgo.GoInt32)) + (97 : stdgo.GoInt32) : stdgo.GoInt32);
        };
        if (((_r >= (65 : stdgo.GoInt32) : Bool) && (_r <= (90 : stdgo.GoInt32) : Bool) : Bool)) {
            return ((((((_r - (65 : stdgo.GoInt32) : stdgo.GoInt32) + (13 : stdgo.GoInt32) : stdgo.GoInt32)) % (26 : stdgo.GoInt32) : stdgo.GoInt32)) + (65 : stdgo.GoInt32) : stdgo.GoInt32);
        };
        return _r;
    }
