package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testKeepFuncLive(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _typ = (stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(function(_i:stdgo.GoInt):Void {})) : stdgo._internal.reflect.Reflect_Type_.Type_);
        var __0:stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value> -> stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value> = null, __1:stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value> -> stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value> = null;
var _g = __1, _f = __0;
        _f = function(_in:stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>):stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value> {
            _internal.reflect_test.Reflect_test__clobber._clobber();
            var _i = (_in[(0 : stdgo.GoInt)].int_() : stdgo.GoInt);
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                (stdgo.Go.typeAssert((stdgo._internal.reflect.Reflect_makeFunc.makeFunc(_typ, _g).interface_() : stdgo.GoInt -> Void)) : stdgo.GoInt -> Void)((_i - (1 : stdgo.GoInt) : stdgo.GoInt));
            };
            return (null : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>);
        };
        _g = function(_in:stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>):stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value> {
            _internal.reflect_test.Reflect_test__clobber._clobber();
            var _i = (_in[(0 : stdgo.GoInt)].int_() : stdgo.GoInt);
            (stdgo.Go.typeAssert((stdgo._internal.reflect.Reflect_makeFunc.makeFunc(_typ, _f).interface_() : stdgo.GoInt -> Void)) : stdgo.GoInt -> Void)(_i);
            return (null : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>);
        };
        stdgo._internal.reflect.Reflect_makeFunc.makeFunc(_typ, _f).call((new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((10 : stdgo.GoInt)))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>));
    }
