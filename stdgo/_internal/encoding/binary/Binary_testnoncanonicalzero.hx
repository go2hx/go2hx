package stdgo._internal.encoding.binary;
function testNonCanonicalZero(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>(4, 4, ...[(128 : stdgo.GoUInt8), (128 : stdgo.GoUInt8), (128 : stdgo.GoUInt8), (0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = stdgo._internal.encoding.binary.Binary_uvarint.uvarint(_buf), _x:stdgo.GoUInt64 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1;
        if (((_x != (0i64 : stdgo.GoUInt64)) || (_n != (4 : stdgo.GoInt)) : Bool)) {
            @:check2r _t.errorf(("Uvarint(%v): got x = %d, n = %d; want 0, 4" : stdgo.GoString), stdgo.Go.toInterface(_buf), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_n));
        };
    }
