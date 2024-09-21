package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testVariadicType(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _f:(stdgo.GoInt, haxe.Rest<stdgo.GoFloat64>) -> Void = null;
        var _typ = (stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(_f)) : stdgo._internal.reflect.Reflect_Type_.Type_);
        if (((_typ.numIn() == (2 : stdgo.GoInt)) && ((_typ.in_((0 : stdgo.GoInt)).string() : String) == (stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((0 : stdgo.GoInt))).string() : String)) : Bool)) {
            var _sl = (_typ.in_((1 : stdgo.GoInt)) : stdgo._internal.reflect.Reflect_Type_.Type_);
            if (_sl.kind() == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                if ((_sl.elem().string() : String) == (stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((0 : stdgo.GoFloat64))).string() : String)) {
                    return;
                };
            };
        };
        _t.errorf(("want NumIn() = 2, In(0) = int, In(1) = []float64" : stdgo.GoString));
        var _s = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("have NumIn() = %d" : stdgo.GoString), stdgo.Go.toInterface(_typ.numIn()))?.__copy__() : stdgo.GoString);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _typ.numIn() : Bool), _i++, {
                _s = (_s + (stdgo._internal.fmt.Fmt_sprintf.sprintf((", In(%d) = %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_typ.in_(_i))))?.__copy__() : stdgo.GoString);
            });
        };
        _t.error(stdgo.Go.toInterface(_s));
    }
