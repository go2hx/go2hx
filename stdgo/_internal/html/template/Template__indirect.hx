package stdgo._internal.html.template;
function _indirect(_a:stdgo.AnyInterface):stdgo.AnyInterface {
        if (_a == null) {
            return (null : stdgo.AnyInterface);
        };
        {
            var _t = (stdgo._internal.reflect.Reflect_typeof.typeOf(_a) : stdgo._internal.reflect.Reflect_type_.Type_);
            if (_t.kind() != ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                return _a;
            };
        };
        var _v = (stdgo._internal.reflect.Reflect_valueof.valueOf(_a)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        while (((_v.kind() == (22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && !_v.isNil() : Bool)) {
            _v = _v.elem()?.__copy__();
        };
        return _v.interface_();
    }
