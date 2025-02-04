package stdgo._internal.reflect;
function makeSlice(_typ:stdgo._internal.reflect.Reflect_type_.Type_, _len:stdgo.GoInt, _cap:stdgo.GoInt):stdgo._internal.reflect.Reflect_value.Value @:splitdeps {
        final value = stdgo._internal.internal.reflect.Reflect.defaultValue(_typ);
        final slice = new stdgo.Slice(_len, _cap.toBasic(), ...[for (i in 0 ... _len.toBasic()) value]);
        final t = @:privateAccess (cast _typ : stdgo._internal.internal.reflect.Reflect._Type_asInterface).__type__;
        return new stdgo._internal.reflect.Reflect_value.Value(new stdgo.AnyInterface(slice, t));
    };
