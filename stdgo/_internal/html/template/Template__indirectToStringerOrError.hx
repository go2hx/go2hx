package stdgo._internal.html.template;
function _indirectToStringerOrError(_a:stdgo.AnyInterface):stdgo.AnyInterface {
        if (_a == null) {
            return (null : stdgo.AnyInterface);
        };
        var _v = (stdgo._internal.reflect.Reflect_valueOf.valueOf(_a)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        while ((((!_v.type().implements_(stdgo._internal.html.template.Template__fmtStringerType._fmtStringerType) && !_v.type().implements_(stdgo._internal.html.template.Template__errorType._errorType) : Bool) && _v.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) : Bool) && !_v.isNil() : Bool)) {
            _v = _v.elem()?.__copy__();
        };
        return _v.interface_();
    }
