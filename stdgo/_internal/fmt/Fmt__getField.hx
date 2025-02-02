package stdgo._internal.fmt;
function _getField(_v:stdgo._internal.reflect.Reflect_Value.Value, _i:stdgo.GoInt):stdgo._internal.reflect.Reflect_Value.Value {
        var _val = (_v.field(_i)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        if (((_val.kind() == (20u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) && !_val.isNil() : Bool)) {
            _val = _val.elem()?.__copy__();
        };
        return _val?.__copy__();
    }
