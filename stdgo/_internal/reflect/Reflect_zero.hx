package stdgo._internal.reflect;
function zero(_typ:stdgo._internal.reflect.Reflect_Type_.Type_):stdgo._internal.reflect.Reflect_Value.Value @:splitdeps {
        return new stdgo._internal.reflect.Reflect_Value.Value(new stdgo.AnyInterface(stdgo._internal.internal.reflect.Reflect.defaultValue(_typ), _typ.__underlying__().value));
    };
