package stdgo._internal.reflect;
function zero(_typ:stdgo._internal.reflect.Reflect_type_.Type_):stdgo._internal.reflect.Reflect_value.Value @:splitdeps {
        return new stdgo._internal.reflect.Reflect_value.Value(new stdgo.AnyInterface(stdgo._internal.internal.reflect.Reflect.defaultValue(_typ), _typ.__underlying__().value));
    };
