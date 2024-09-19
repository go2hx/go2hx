package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testConvertPanic(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _s = (new stdgo.Slice<stdgo.GoUInt8>((4 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _p = (stdgo.Go.setRef(new stdgo.GoArray<stdgo.GoUInt8>(8, 8, ...[for (i in 0 ... 8) (0 : stdgo.GoUInt8)])) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>);
        var _v = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_s))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        var _pt = (stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(_p)) : stdgo._internal.reflect.Reflect_Type_.Type_);
        if (!_v.type().convertibleTo(_pt)) {
            _t.errorf(("[]byte should be convertible to *[8]byte" : stdgo.GoString));
        };
        if (_v.canConvert(_pt)) {
            _t.errorf(("slice with length 4 should not be convertible to *[8]byte" : stdgo.GoString));
        };
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("reflect: cannot convert slice with length 4 to pointer to array with length 8" : stdgo.GoString), function():Void {
            var __blank__ = _v.convert(_pt);
        });
        if (_v.canConvert(_pt.elem())) {
            _t.errorf(("slice with length 4 should not be convertible to [8]byte" : stdgo.GoString));
        };
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("reflect: cannot convert slice with length 4 to array with length 8" : stdgo.GoString), function():Void {
            var __blank__ = _v.convert(_pt.elem());
        });
    }
