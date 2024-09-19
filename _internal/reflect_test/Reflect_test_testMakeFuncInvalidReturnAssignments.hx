package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testMakeFuncInvalidReturnAssignments(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(stdgo.Go.str()?.__copy__(), function():Void {
            var _f:() -> stdgo.Error = null;
            _f = (stdgo.Go.typeAssert((stdgo._internal.reflect.Reflect_makeFunc.makeFunc(stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(_f)), function(_0:stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>):stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value> {
                return (new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((7 : stdgo.GoInt)))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>);
            }).interface_() : () -> stdgo.Error)) : () -> stdgo.Error);
            _f();
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(stdgo.Go.str()?.__copy__(), function():Void {
            var _f:() -> stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser = null;
            _f = (stdgo.Go.typeAssert((stdgo._internal.reflect.Reflect_makeFunc.makeFunc(stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(_f)), function(_0:stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>):stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value> {
                var _w:stdgo._internal.io.Io_WriteCloser.WriteCloser = stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.reflect_test.Reflect_test_WC.WC() : _internal.reflect_test.Reflect_test_WC.WC)) : stdgo.Ref<_internal.reflect_test.Reflect_test_WC.WC>));
                return (new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef(_w) : stdgo.Ref<stdgo._internal.io.Io_WriteCloser.WriteCloser>))).elem()?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>);
            }).interface_() : () -> stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser)) : () -> stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser);
            _f();
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(stdgo.Go.str()?.__copy__(), function():Void {
            var _f:() -> stdgo.Chan<stdgo.GoInt> = null;
            _f = (stdgo.Go.typeAssert((stdgo._internal.reflect.Reflect_makeFunc.makeFunc(stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(_f)), function(_0:stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>):stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value> {
                var _c:stdgo.Chan<stdgo.GoInt> = (new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
                return (new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_c))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>);
            }).interface_() : () -> stdgo.Chan<stdgo.GoInt>)) : () -> stdgo.Chan<stdgo.GoInt>);
            _f();
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(stdgo.Go.str()?.__copy__(), function():Void {
            {};
            {};
            var _f:() -> _internal.reflect_test.Reflect_test_T_testMakeFuncInvalidReturnAssignments___localname___T_59310.T_testMakeFuncInvalidReturnAssignments___localname___T_59310 = null;
            _f = (stdgo.Go.typeAssert((stdgo._internal.reflect.Reflect_makeFunc.makeFunc(stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(_f)), function(_0:stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>):stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value> {
                return (new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(({ _a : (1 : stdgo.GoInt), _b : (2 : stdgo.GoInt), _c : (3 : stdgo.GoInt) } : _internal.reflect_test.Reflect_test_T_testMakeFuncInvalidReturnAssignments___localname___U_59341.T_testMakeFuncInvalidReturnAssignments___localname___U_59341)))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>);
            }).interface_() : () -> _internal.reflect_test.Reflect_test_T_testMakeFuncInvalidReturnAssignments___localname___T_59310.T_testMakeFuncInvalidReturnAssignments___localname___T_59310)) : () -> _internal.reflect_test.Reflect_test_T_testMakeFuncInvalidReturnAssignments___localname___T_59310.T_testMakeFuncInvalidReturnAssignments___localname___T_59310);
            _f();
        });
    }
