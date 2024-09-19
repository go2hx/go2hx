package stdgo._internal.html.template;
function _indirect(_a:stdgo.AnyInterface):stdgo.AnyInterface {
        if (_a == null) {
            return (null : stdgo.AnyInterface);
        };
        {
            var _t = (stdgo._internal.reflect.Reflect_typeOf.typeOf(_a) : stdgo._internal.reflect.Reflect_Type_.Type_);
            if (_t.kind() != ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                return _a;
            };
        };
        var _v = (stdgo._internal.reflect.Reflect_valueOf.valueOf(_a)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        while (((_v.kind() == (22u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) && !_v.isNil() : Bool)) {
            _v = _v.elem()?.__copy__();
        };
        return _v.interface_();
    }
