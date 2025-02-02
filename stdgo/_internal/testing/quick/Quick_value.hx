package stdgo._internal.testing.quick;
function value(_t:stdgo._internal.reflect.Reflect_Type_.Type_, _rand:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>):{ var _0 : stdgo._internal.reflect.Reflect_Value.Value; var _1 : Bool; } {
        var _value = ({} : stdgo._internal.reflect.Reflect_Value.Value), _ok = false;
        return {
            final __tmp__:{ var _0 : stdgo._internal.reflect.Reflect_Value.Value; var _1 : Bool; } = stdgo._internal.testing.quick.Quick__sizedValue._sizedValue(_t, _rand, (50 : stdgo.GoInt));
            _value = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
