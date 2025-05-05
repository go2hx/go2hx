package stdgo._internal.reflect;
function new_(_typ:stdgo._internal.reflect.Reflect_type_.Type_):stdgo._internal.reflect.Reflect_value.Value {
        var value = stdgo._internal.internal.reflect.Reflect.defaultValue(_typ);
        var ptr = new Pointer(() -> return value,  x -> return value = x);
        return new stdgo._internal.reflect.Reflect_value.Value(new stdgo.AnyInterface(ptr, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> return @:privateAccess (_typ : Dynamic)._common() }))));
    }
