package stdgo._internal.reflect;
function deepEqual(_x:stdgo.AnyInterface, _y:stdgo.AnyInterface):Bool @:splitdeps {
        if (new stdgo._internal.reflect.Reflect_value.Value(_x).isNil() || new stdgo._internal.reflect.Reflect_value.Value(_y).isNil()) {
            return (_x : stdgo.AnyInterface) == (_y : stdgo.AnyInterface);
        };
        var v1 = stdgo._internal.reflect.Reflect_valueof.valueOf(_x);
        var v2 = stdgo._internal.reflect.Reflect_valueof.valueOf(_y);
        return stdgo._internal.internal.reflect.Reflect.deepValueEqual(v1, v2, null, 0);
    };
