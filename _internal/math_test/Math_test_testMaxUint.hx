package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function testMaxUint(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _v = ((-1u32 : stdgo.GoUInt) : stdgo.GoUInt);
            if ((_v + (1u32 : stdgo.GoUInt) : stdgo.GoUInt) != ((0u32 : stdgo.GoUInt))) {
                _t.errorf(("MaxUint should wrap around to zero: %d" : stdgo.GoString), stdgo.Go.toInterface((_v + (1u32 : stdgo.GoUInt) : stdgo.GoUInt)));
            };
        };
        {
            var _v = ((255 : stdgo.GoUInt8) : stdgo.GoUInt8);
            if ((_v + (1 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                _t.errorf(("MaxUint8 should wrap around to zero: %d" : stdgo.GoString), stdgo.Go.toInterface((_v + (1 : stdgo.GoUInt8) : stdgo.GoUInt8)));
            };
        };
        {
            var _v = ((65535 : stdgo.GoUInt16) : stdgo.GoUInt16);
            if ((_v + (1 : stdgo.GoUInt16) : stdgo.GoUInt16) != ((0 : stdgo.GoUInt16))) {
                _t.errorf(("MaxUint16 should wrap around to zero: %d" : stdgo.GoString), stdgo.Go.toInterface((_v + (1 : stdgo.GoUInt16) : stdgo.GoUInt16)));
            };
        };
        {
            var _v = ((-1u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
            if ((_v + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32))) {
                _t.errorf(("MaxUint32 should wrap around to zero: %d" : stdgo.GoString), stdgo.Go.toInterface((_v + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32)));
            };
        };
        {
            var _v = ((-1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            if ((_v + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
                _t.errorf(("MaxUint64 should wrap around to zero: %d" : stdgo.GoString), stdgo.Go.toInterface((_v + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)));
            };
        };
    }
