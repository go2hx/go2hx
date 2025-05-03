package stdgo._internal.text.template;
function _indirectInterface(_v:stdgo._internal.reflect.Reflect_value.Value):stdgo._internal.reflect.Reflect_value.Value {
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L1023"
        if (_v.kind() != ((20u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L1024"
            return _v?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L1026"
        if (_v.isNil()) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L1027"
            return (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value);
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L1029"
        return _v.elem()?.__copy__();
    }
