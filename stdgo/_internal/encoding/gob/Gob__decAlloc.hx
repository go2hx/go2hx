package stdgo._internal.encoding.gob;
function _decAlloc(_v:stdgo._internal.reflect.Reflect_Value.Value):stdgo._internal.reflect.Reflect_Value.Value {
        while (_v.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
            if (_v.isNil()) {
                _v.set(stdgo._internal.reflect.Reflect_new_.new_(_v.type().elem())?.__copy__());
            };
            _v = _v.elem()?.__copy__();
        };
        return _v?.__copy__();
    }