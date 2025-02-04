package stdgo._internal.reflect;
function typeOf(_i:stdgo.AnyInterface):stdgo._internal.reflect.Reflect_type_.Type_ @:splitdeps {
        if (_i == null) return new stdgo._internal.internal.reflect.Reflect._Type_asInterface(stdgo.Go.pointer(new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.basic(stdgo._internal.internal.reflect.Reflect.BasicKind.unsafepointer_kind))), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.basic(stdgo._internal.internal.reflect.Reflect.BasicKind.unsafepointer_kind)));
        return new stdgo._internal.internal.reflect.Reflect._Type_asInterface(stdgo.Go.pointer(_i.type), _i.type);
    };
