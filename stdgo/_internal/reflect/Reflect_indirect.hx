package stdgo._internal.reflect;
function indirect(_v:stdgo._internal.reflect.Reflect_Value.Value):stdgo._internal.reflect.Reflect_Value.Value {
        if (_v.kind() != stdgo._internal.reflect.Reflect_pointer.pointer) {
            return _v;
        } else {
            return _v.elem();
        };
    }
