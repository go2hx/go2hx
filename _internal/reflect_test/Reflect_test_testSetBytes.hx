package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testSetBytes(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _x:_internal.reflect_test.Reflect_test_T_testSetBytes___localname___B_92498.T_testSetBytes___localname___B_92498 = new _internal.reflect_test.Reflect_test_T_testSetBytes___localname___B_92498.T_testSetBytes___localname___B_92498(0, 0);
        var _y = (new stdgo.Slice<stdgo.GoUInt8>(4, 4, ...[(1 : stdgo.GoUInt8), (2 : stdgo.GoUInt8), (3 : stdgo.GoUInt8), (4 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef(_x) : stdgo.Ref<_internal.reflect_test.Reflect_test_T_testSetBytes___localname___B_92498.T_testSetBytes___localname___B_92498>))).elem().setBytes(_y);
        if (!stdgo._internal.bytes.Bytes_equal.equal(_x, _y)) {
            _t.fatalf(("ValueOf(%v).Bytes() = %v" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y));
        };
        if (stdgo.Go.pointer(_x[(0 : stdgo.GoInt)]) != (stdgo.Go.pointer(_y[(0 : stdgo.GoInt)]))) {
            _t.errorf(("ValueOf(%p).Bytes() = %p" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_x[(0 : stdgo.GoInt)])), stdgo.Go.toInterface(stdgo.Go.pointer(_y[(0 : stdgo.GoInt)])));
        };
    }
