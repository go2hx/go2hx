package stdgo._internal.text.template;
function _indirectInterface(_v:stdgo._internal.reflect.Reflect_Value.Value):stdgo._internal.reflect.Reflect_Value.Value {
        if (_v.kind() != ((20u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
            return _v?.__copy__();
        };
        if (_v.isNil()) {
            return (new stdgo._internal.reflect.Reflect_Value.Value() : stdgo._internal.reflect.Reflect_Value.Value);
        };
        return _v.elem()?.__copy__();
    }
