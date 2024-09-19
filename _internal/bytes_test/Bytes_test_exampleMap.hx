package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function exampleMap():Void {
        var _rot13 = (function(_r:stdgo.GoInt32):stdgo.GoInt32 {
            if (((_r >= (65 : stdgo.GoInt32) : Bool) && (_r <= (90 : stdgo.GoInt32) : Bool) : Bool)) {
                return ((65 : stdgo.GoInt32) + ((((_r - (65 : stdgo.GoInt32) : stdgo.GoInt32) + (13 : stdgo.GoInt32) : stdgo.GoInt32)) % (26 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt32);
            } else if (((_r >= (97 : stdgo.GoInt32) : Bool) && (_r <= (122 : stdgo.GoInt32) : Bool) : Bool)) {
                return ((97 : stdgo.GoInt32) + ((((_r - (97 : stdgo.GoInt32) : stdgo.GoInt32) + (13 : stdgo.GoInt32) : stdgo.GoInt32)) % (26 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt32);
            };
            return _r;
        } : stdgo.GoInt32 -> stdgo.GoInt32);
        stdgo._internal.fmt.Fmt_printf.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes_map_.map_(_rot13, (("\'Twas brillig and the slithy gopher..." : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>))));
    }
