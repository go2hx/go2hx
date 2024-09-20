package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testMakeFuncVariadic(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _fn = function(__6:stdgo.GoInt, _is:haxe.Rest<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt> {
            return (null : stdgo.Slice<stdgo.GoInt>);
        };
        var _fv = (stdgo._internal.reflect.Reflect_makeFunc.makeFunc(stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(_fn)), function(_in:stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>):stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value> {
            return (_in.__slice__((1 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>);
        })?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef(_fn) : stdgo.Ref<(stdgo.GoInt, haxe.Rest<stdgo.GoInt>) -> stdgo.Slice<stdgo.GoInt>>))).elem().set(_fv?.__copy__());
        var _r = _fn((1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt));
        if (((_r[(0 : stdgo.GoInt)] != (2 : stdgo.GoInt)) || (_r[(1 : stdgo.GoInt)] != (3 : stdgo.GoInt)) : Bool)) {
            _t.errorf(("Call returned [%v, %v]; want 2, 3" : stdgo.GoString), stdgo.Go.toInterface(_r[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_r[(1 : stdgo.GoInt)]));
        };
        _r = _fn((1 : stdgo.GoInt), ...((new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) : Array<stdgo.GoInt>));
        if (((_r[(0 : stdgo.GoInt)] != (2 : stdgo.GoInt)) || (_r[(1 : stdgo.GoInt)] != (3 : stdgo.GoInt)) : Bool)) {
            _t.errorf(("Call returned [%v, %v]; want 2, 3" : stdgo.GoString), stdgo.Go.toInterface(_r[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_r[(1 : stdgo.GoInt)]));
        };
        _r = (stdgo.Go.typeAssert((_fv.call((new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>(3, 3, ...[stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((1 : stdgo.GoInt)))?.__copy__(), stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((2 : stdgo.GoInt)))?.__copy__(), stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((3 : stdgo.GoInt)))?.__copy__()].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>))[(0 : stdgo.GoInt)].interface_() : stdgo.Slice<stdgo.GoInt>)) : stdgo.Slice<stdgo.GoInt>);
        if (((_r[(0 : stdgo.GoInt)] != (2 : stdgo.GoInt)) || (_r[(1 : stdgo.GoInt)] != (3 : stdgo.GoInt)) : Bool)) {
            _t.errorf(("Call returned [%v, %v]; want 2, 3" : stdgo.GoString), stdgo.Go.toInterface(_r[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_r[(1 : stdgo.GoInt)]));
        };
        _r = (stdgo.Go.typeAssert((_fv.callSlice((new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>(2, 2, ...[stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((1 : stdgo.GoInt)))?.__copy__(), stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)))?.__copy__()].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>))[(0 : stdgo.GoInt)].interface_() : stdgo.Slice<stdgo.GoInt>)) : stdgo.Slice<stdgo.GoInt>);
        if (((_r[(0 : stdgo.GoInt)] != (2 : stdgo.GoInt)) || (_r[(1 : stdgo.GoInt)] != (3 : stdgo.GoInt)) : Bool)) {
            _t.errorf(("Call returned [%v, %v]; want 2, 3" : stdgo.GoString), stdgo.Go.toInterface(_r[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_r[(1 : stdgo.GoInt)]));
        };
        var _f = (stdgo.Go.typeAssert((_fv.interface_() : (stdgo.GoInt, stdgo.Slice<stdgo.GoInt>) -> stdgo.Slice<stdgo.GoInt>)) : (stdgo.GoInt, stdgo.Slice<stdgo.GoInt>) -> stdgo.Slice<stdgo.GoInt>);
        _r = _f((1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt));
        if (((_r[(0 : stdgo.GoInt)] != (2 : stdgo.GoInt)) || (_r[(1 : stdgo.GoInt)] != (3 : stdgo.GoInt)) : Bool)) {
            _t.errorf(("Call returned [%v, %v]; want 2, 3" : stdgo.GoString), stdgo.Go.toInterface(_r[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_r[(1 : stdgo.GoInt)]));
        };
        _r = _f((1 : stdgo.GoInt), ...((new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) : Array<stdgo.GoInt>));
        if (((_r[(0 : stdgo.GoInt)] != (2 : stdgo.GoInt)) || (_r[(1 : stdgo.GoInt)] != (3 : stdgo.GoInt)) : Bool)) {
            _t.errorf(("Call returned [%v, %v]; want 2, 3" : stdgo.GoString), stdgo.Go.toInterface(_r[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_r[(1 : stdgo.GoInt)]));
        };
    }
