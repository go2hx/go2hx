package stdgo._internal.encoding.gob;
function _valid(_v:stdgo._internal.reflect.Reflect_value.Value):Bool {
        {
            final __value__ = _v.kind();
            if (__value__ == ((0u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                return false;
            } else if (__value__ == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                return !_v.isNil();
            };
        };
        return true;
    }
