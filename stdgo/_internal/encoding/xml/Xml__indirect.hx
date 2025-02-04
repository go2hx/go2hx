package stdgo._internal.encoding.xml;
function _indirect(_vf:stdgo._internal.reflect.Reflect_value.Value):stdgo._internal.reflect.Reflect_value.Value {
        while (((_vf.kind() == (20u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || (_vf.kind() == (22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) : Bool)) {
            if (_vf.isNil()) {
                return _vf?.__copy__();
            };
            _vf = _vf.elem()?.__copy__();
        };
        return _vf?.__copy__();
    }
