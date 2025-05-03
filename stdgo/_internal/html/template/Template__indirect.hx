package stdgo._internal.html.template;
function _indirect(_a:stdgo.AnyInterface):stdgo.AnyInterface {
        //"file:///home/runner/.go/go1.21.3/src/html/template/content.go#L116"
        if (_a == null) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/content.go#L117"
            return (null : stdgo.AnyInterface);
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/content.go#L119"
        {
            var _t = (stdgo._internal.reflect.Reflect_typeof.typeOf(_a) : stdgo._internal.reflect.Reflect_type_.Type_);
            if (_t.kind() != ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/html/template/content.go#L121"
                return _a;
            };
        };
        var _v = (stdgo._internal.reflect.Reflect_valueof.valueOf(_a)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///home/runner/.go/go1.21.3/src/html/template/content.go#L124"
        while (((_v.kind() == (22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && !_v.isNil() : Bool)) {
            _v = _v.elem()?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/content.go#L127"
        return _v.interface_();
    }
