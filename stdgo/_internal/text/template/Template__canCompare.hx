package stdgo._internal.text.template;
function _canCompare(_v1:stdgo._internal.reflect.Reflect_Value.Value, _v2:stdgo._internal.reflect.Reflect_Value.Value):Bool {
        var _k1 = (_v1.kind() : stdgo._internal.reflect.Reflect_Kind.Kind);
        var _k2 = (_v2.kind() : stdgo._internal.reflect.Reflect_Kind.Kind);
        if (_k1 == (_k2)) {
            return true;
        };
        return ((_k1 == (0u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || (_k2 == (0u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) : Bool);
    }
