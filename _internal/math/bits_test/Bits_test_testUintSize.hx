package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function testUintSize(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _x:stdgo.GoUInt = (0 : stdgo.GoUInt);
        {
            var _want = (32 : stdgo.GoUIntptr);
            if ((32 : stdgo.GoUIntptr) != (_want)) {
                _t.fatalf(("UintSize = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface((32 : stdgo.GoInt)), stdgo.Go.toInterface(_want));
            };
        };
    }
