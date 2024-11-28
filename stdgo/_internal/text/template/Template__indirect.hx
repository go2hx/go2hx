package stdgo._internal.text.template;
function _indirect(_v:stdgo._internal.reflect.Reflect_Value.Value):{ var _0 : stdgo._internal.reflect.Reflect_Value.Value; var _1 : Bool; } {
        var _rv = ({} : stdgo._internal.reflect.Reflect_Value.Value), _isNil = false;
        while (((_v.kind() == (22u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || (_v.kind() == (20u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) : Bool)) {
            if (_v.isNil()) {
                return { _0 : _rv = _v.__copy__(), _1 : _isNil = true };
            };
            _v = _v.elem()?.__copy__();
        };
        return { _0 : _rv = _v?.__copy__(), _1 : _isNil = false };
    }
