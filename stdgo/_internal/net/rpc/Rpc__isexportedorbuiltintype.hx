package stdgo._internal.net.rpc;
function _isExportedOrBuiltinType(_t:stdgo._internal.reflect.Reflect_type_.Type_):Bool {
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/server.go#L206"
        while (_t.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
            _t = _t.elem();
        };
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/server.go#L211"
        return (stdgo._internal.go.token.Token_isexported.isExported(_t.name()?.__copy__()) || (_t.pkgPath() == (stdgo.Go.str() : stdgo.GoString)) : Bool);
    }
