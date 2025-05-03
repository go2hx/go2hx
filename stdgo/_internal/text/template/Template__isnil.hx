package stdgo._internal.text.template;
function _isNil(_v:stdgo._internal.reflect.Reflect_value.Value):Bool {
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L440"
        if (!_v.isValid()) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L441"
            return true;
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L443"
        {
            final __value__ = _v.kind();
            if (__value__ == ((18u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((19u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((20u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((21u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L445"
                return _v.isNil();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L447"
        return false;
    }
