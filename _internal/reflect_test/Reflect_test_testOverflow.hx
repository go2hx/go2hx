package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testOverflow(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _ovf = (_internal.reflect_test.Reflect_test_v.v(stdgo.Go.toInterface((0 : stdgo.GoFloat64))).overflowFloat((1e+300 : stdgo.GoFloat64)) : Bool);
            if (_ovf) {
                _t.errorf(("%v wrongly overflows float64" : stdgo.GoString), stdgo.Go.toInterface((1e+300 : stdgo.GoFloat64)));
            };
        };
        var _maxFloat32 = (3.4028234663852886e+38 : stdgo.GoFloat64);
        {
            var _ovf = (_internal.reflect_test.Reflect_test_v.v(stdgo.Go.toInterface(((0 : stdgo.GoFloat64) : stdgo.GoFloat32))).overflowFloat(_maxFloat32) : Bool);
            if (_ovf) {
                _t.errorf(("%v wrongly overflows float32" : stdgo.GoString), stdgo.Go.toInterface(_maxFloat32));
            };
        };
        var _ovfFloat32 = (3.402823466385289e+38 : stdgo.GoFloat64);
        {
            var _ovf = (_internal.reflect_test.Reflect_test_v.v(stdgo.Go.toInterface(((0 : stdgo.GoFloat64) : stdgo.GoFloat32))).overflowFloat(_ovfFloat32) : Bool);
            if (!_ovf) {
                _t.errorf(("%v should overflow float32" : stdgo.GoString), stdgo.Go.toInterface(_ovfFloat32));
            };
        };
        {
            var _ovf = (_internal.reflect_test.Reflect_test_v.v(stdgo.Go.toInterface(((0 : stdgo.GoFloat64) : stdgo.GoFloat32))).overflowFloat(-_ovfFloat32) : Bool);
            if (!_ovf) {
                _t.errorf(("%v should overflow float32" : stdgo.GoString), stdgo.Go.toInterface(-_ovfFloat32));
            };
        };
        var _maxInt32 = ((2147483647i64 : stdgo.GoInt64) : stdgo.GoInt64);
        {
            var _ovf = (_internal.reflect_test.Reflect_test_v.v(stdgo.Go.toInterface((0 : stdgo.GoInt32))).overflowInt(_maxInt32) : Bool);
            if (_ovf) {
                _t.errorf(("%v wrongly overflows int32" : stdgo.GoString), stdgo.Go.toInterface(_maxInt32));
            };
        };
        {
            var _ovf = (_internal.reflect_test.Reflect_test_v.v(stdgo.Go.toInterface((0 : stdgo.GoInt32))).overflowInt((-2147483648i64 : stdgo.GoInt64)) : Bool);
            if (_ovf) {
                _t.errorf(("%v wrongly overflows int32" : stdgo.GoString), stdgo.Go.toInterface((-2147483648i64 : stdgo.GoInt64)));
            };
        };
        var _ovfInt32 = ((2147483648i64 : stdgo.GoInt64) : stdgo.GoInt64);
        {
            var _ovf = (_internal.reflect_test.Reflect_test_v.v(stdgo.Go.toInterface((0 : stdgo.GoInt32))).overflowInt(_ovfInt32) : Bool);
            if (!_ovf) {
                _t.errorf(("%v should overflow int32" : stdgo.GoString), stdgo.Go.toInterface(_ovfInt32));
            };
        };
        var _maxUint32 = ((4294967295i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        {
            var _ovf = (_internal.reflect_test.Reflect_test_v.v(stdgo.Go.toInterface((0u32 : stdgo.GoUInt32))).overflowUint(_maxUint32) : Bool);
            if (_ovf) {
                _t.errorf(("%v wrongly overflows uint32" : stdgo.GoString), stdgo.Go.toInterface(_maxUint32));
            };
        };
        var _ovfUint32 = ((4294967296i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        {
            var _ovf = (_internal.reflect_test.Reflect_test_v.v(stdgo.Go.toInterface((0u32 : stdgo.GoUInt32))).overflowUint(_ovfUint32) : Bool);
            if (!_ovf) {
                _t.errorf(("%v should overflow uint32" : stdgo.GoString), stdgo.Go.toInterface(_ovfUint32));
            };
        };
    }
