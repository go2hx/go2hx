package stdgo._internal.html.template;
function _indirectToJSONMarshaler(_a:stdgo.AnyInterface):stdgo.AnyInterface {
        //"file:///home/runner/.go/go1.21.3/src/html/template/js.go#L136"
        if (_a == null) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/js.go#L137"
            return (null : stdgo.AnyInterface);
        };
        var _v = (stdgo._internal.reflect.Reflect_valueof.valueOf(_a)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///home/runner/.go/go1.21.3/src/html/template/js.go#L141"
        while (((!_v.type().implements_(stdgo._internal.html.template.Template__jsonmarshaltype._jsonMarshalType) && _v.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) : Bool) && !_v.isNil() : Bool)) {
            _v = _v.elem()?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/js.go#L144"
        return _v.interface_();
    }
