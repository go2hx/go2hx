package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function exampleMakeFunc():Void {
        var _swap = function(_in:stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>):stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value> {
            return (new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>(2, 2, ...[_in[(1 : stdgo.GoInt)], _in[(0 : stdgo.GoInt)]].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>);
        };
        var _makeSwap = (function(_fptr:stdgo.AnyInterface):Void {
            var _fn = (stdgo._internal.reflect.Reflect_valueOf.valueOf(_fptr).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            var _v = (stdgo._internal.reflect.Reflect_makeFunc.makeFunc(_fn.type(), _swap)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            _fn.set(_v?.__copy__());
        } : stdgo.AnyInterface -> Void);
        var _intSwap:(stdgo.GoInt, stdgo.GoInt) -> { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } = null;
        _makeSwap(stdgo.Go.toInterface((stdgo.Go.setRef(_intSwap) : stdgo.Ref<(stdgo.GoInt, stdgo.GoInt) -> { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; }>)));
        ({
            var __tmp__ = _intSwap((0 : stdgo.GoInt), (1 : stdgo.GoInt));
            stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface((__tmp__._0 : stdgo.GoInt)), stdgo.Go.toInterface((__tmp__._1 : stdgo.GoInt)));
        });
        var _floatSwap:(stdgo.GoFloat64, stdgo.GoFloat64) -> { var _0 : stdgo.GoFloat64; var _1 : stdgo.GoFloat64; } = null;
        _makeSwap(stdgo.Go.toInterface((stdgo.Go.setRef(_floatSwap) : stdgo.Ref<(stdgo.GoFloat64, stdgo.GoFloat64) -> { var _0 : stdgo.GoFloat64; var _1 : stdgo.GoFloat64; }>)));
        ({
            var __tmp__ = _floatSwap((2.72 : stdgo.GoFloat64), (3.14 : stdgo.GoFloat64));
            stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface((__tmp__._0 : stdgo.GoFloat64)), stdgo.Go.toInterface((__tmp__._1 : stdgo.GoFloat64)));
        });
    }
