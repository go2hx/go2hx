package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function _verifyGCBits(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _typ:stdgo._internal.reflect.Reflect_Type_.Type_, _bits:stdgo.Slice<stdgo.GoUInt8>):Void {
        var _heapBits = stdgo._internal.reflect.Reflect_gcbits.gcbits(stdgo._internal.reflect.Reflect_new_.new_(_typ).interface_());
        _bits = _internal.reflect_test.Reflect_test__trimBitmap._trimBitmap(_bits);
        if (!stdgo._internal.bytes.Bytes_equal.equal(_heapBits, _bits)) {
            var __tmp__ = stdgo._internal.runtime.Runtime_caller.caller((1 : stdgo.GoInt)), __7:stdgo.GoUIntptr = __tmp__._0, __8:stdgo.GoString = __tmp__._1, _line:stdgo.GoInt = __tmp__._2, __9:Bool = __tmp__._3;
            _t.errorf(("line %d: heapBits incorrect for %v\nhave %v\nwant %v" : stdgo.GoString), stdgo.Go.toInterface(_line), stdgo.Go.toInterface(_typ), stdgo.Go.toInterface(_heapBits), stdgo.Go.toInterface(_bits));
        };
    }
