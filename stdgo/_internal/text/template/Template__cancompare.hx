package stdgo._internal.text.template;
function _canCompare(_v1:stdgo._internal.reflect.Reflect_value.Value, _v2:stdgo._internal.reflect.Reflect_value.Value):Bool {
        var _k1 = (_v1.kind() : stdgo._internal.reflect.Reflect_kind.Kind);
        var _k2 = (_v2.kind() : stdgo._internal.reflect.Reflect_kind.Kind);
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L455"
        if (_k1 == (_k2)) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L456"
            return true;
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L459"
        return ((_k1 == (0u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || (_k2 == (0u32 : stdgo._internal.reflect.Reflect_kind.Kind)) : Bool);
    }
