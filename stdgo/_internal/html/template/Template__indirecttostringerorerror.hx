package stdgo._internal.html.template;
function _indirectToStringerOrError(_a:stdgo.AnyInterface):stdgo.AnyInterface {
        //"file:///home/runner/.go/go1.21.3/src/html/template/content.go#L139"
        if (_a == null) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/content.go#L140"
            return (null : stdgo.AnyInterface);
        };
        var _v = (stdgo._internal.reflect.Reflect_valueof.valueOf(_a)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///home/runner/.go/go1.21.3/src/html/template/content.go#L143"
        while ((((!_v.type().implements_(stdgo._internal.html.template.Template__fmtstringertype._fmtStringerType) && !_v.type().implements_(stdgo._internal.html.template.Template__errortype._errorType) : Bool) && _v.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) : Bool) && !_v.isNil() : Bool)) {
            _v = _v.elem()?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/content.go#L146"
        return _v.interface_();
    }
