package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testBytes(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("on int Value" : stdgo.GoString), function():Void {
            stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((0 : stdgo.GoInt))).bytes();
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("of non-byte slice" : stdgo.GoString), function():Void {
            stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>))).bytes();
        });
        {};
        var _x = (new stdgo.Slice<stdgo.GoUInt8>(4, 4, ...[(1 : stdgo.GoUInt8), (2 : stdgo.GoUInt8), (3 : stdgo.GoUInt8), (4 : stdgo.GoUInt8)]).__setNumber32__() : _internal.reflect_test.Reflect_test_T_testBytes___localname___S_91498.T_testBytes___localname___S_91498);
        var _y = stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_x)).bytes();
        if (!stdgo._internal.bytes.Bytes_equal.equal(_x, _y)) {
            _t.fatalf(("ValueOf(%v).Bytes() = %v" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y));
        };
        if (stdgo.Go.pointer(_x[(0 : stdgo.GoInt)]) != (stdgo.Go.pointer(_y[(0 : stdgo.GoInt)]))) {
            _t.errorf(("ValueOf(%p).Bytes() = %p" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_x[(0 : stdgo.GoInt)])), stdgo.Go.toInterface(stdgo.Go.pointer(_y[(0 : stdgo.GoInt)])));
        };
        {};
        var _a = ((new stdgo.GoArray<stdgo.GoUInt8>(4, 4, ...[(1 : stdgo.GoUInt8), (2 : stdgo.GoUInt8), (3 : stdgo.GoUInt8), (4 : stdgo.GoUInt8)]).__setNumber32__() : _internal.reflect_test.Reflect_test_T_testBytes___localname___A_91709.T_testBytes___localname___A_91709)?.__copy__() : _internal.reflect_test.Reflect_test_T_testBytes___localname___A_91709.T_testBytes___localname___A_91709);
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("unaddressable" : stdgo.GoString), function():Void {
            stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_a)).bytes();
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("on ptr Value" : stdgo.GoString), function():Void {
            stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef(_a) : stdgo.Ref<_internal.reflect_test.Reflect_test_T_testBytes___localname___A_91709.T_testBytes___localname___A_91709>))).bytes();
        });
        var _b = stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef(_a) : stdgo.Ref<_internal.reflect_test.Reflect_test_T_testBytes___localname___A_91709.T_testBytes___localname___A_91709>))).elem().bytes();
        if (!stdgo._internal.bytes.Bytes_equal.equal((_a.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _y)) {
            _t.fatalf(("ValueOf(%v).Bytes() = %v" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_b));
        };
        if (stdgo.Go.pointer(_a[(0 : stdgo.GoInt)]) != (stdgo.Go.pointer(_b[(0 : stdgo.GoInt)]))) {
            _t.errorf(("ValueOf(%p).Bytes() = %p" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_a[(0 : stdgo.GoInt)])), stdgo.Go.toInterface(stdgo.Go.pointer(_b[(0 : stdgo.GoInt)])));
        };
        {};
        {};
        {};
        stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((new stdgo.Slice<_internal.reflect_test.Reflect_test_T_testBytes___localname___B_92201.T_testBytes___localname___B_92201>(4, 4, ...[(1 : _internal.reflect_test.Reflect_test_T_testBytes___localname___B_92201.T_testBytes___localname___B_92201), (2 : _internal.reflect_test.Reflect_test_T_testBytes___localname___B_92201.T_testBytes___localname___B_92201), (3 : _internal.reflect_test.Reflect_test_T_testBytes___localname___B_92201.T_testBytes___localname___B_92201), (4 : _internal.reflect_test.Reflect_test_T_testBytes___localname___B_92201.T_testBytes___localname___B_92201)]).__setNumber32__() : stdgo.Slice<_internal.reflect_test.Reflect_test_T_testBytes___localname___B_92201.T_testBytes___localname___B_92201>))).bytes();
        stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef(new stdgo.GoArray<_internal.reflect_test.Reflect_test_T_testBytes___localname___B_92201.T_testBytes___localname___B_92201>(4, 4, ...[for (i in 0 ... 4) ((0 : stdgo.GoUInt8) : _internal.reflect_test.Reflect_test_T_testBytes___localname___B_92201.T_testBytes___localname___B_92201)])) : stdgo.Ref<stdgo.GoArray<_internal.reflect_test.Reflect_test_T_testBytes___localname___B_92201.T_testBytes___localname___B_92201>>))).elem().bytes();
        stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((new stdgo.Slice<_internal.reflect_test.Reflect_test_T_testBytes___localname___B_92201.T_testBytes___localname___B_92201>(4, 4, ...[(1 : _internal.reflect_test.Reflect_test_T_testBytes___localname___B_92201.T_testBytes___localname___B_92201), (2 : _internal.reflect_test.Reflect_test_T_testBytes___localname___B_92201.T_testBytes___localname___B_92201), (3 : _internal.reflect_test.Reflect_test_T_testBytes___localname___B_92201.T_testBytes___localname___B_92201), (4 : _internal.reflect_test.Reflect_test_T_testBytes___localname___B_92201.T_testBytes___localname___B_92201)]).__setNumber32__() : _internal.reflect_test.Reflect_test_T_testBytes___localname___SB_92214.T_testBytes___localname___SB_92214))).bytes();
        stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef(new _internal.reflect_test.Reflect_test_T_testBytes___localname___AB_92227.T_testBytes___localname___AB_92227(4, 4, ...[for (i in 0 ... 4) ((0 : stdgo.GoUInt8) : _internal.reflect_test.Reflect_test_T_testBytes___localname___B_92201.T_testBytes___localname___B_92201)])) : stdgo.Ref<_internal.reflect_test.Reflect_test_T_testBytes___localname___AB_92227.T_testBytes___localname___AB_92227>))).elem().bytes();
    }
