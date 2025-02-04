package stdgo._internal.net.rpc;
function _isExportedOrBuiltinType(_t:stdgo._internal.reflect.Reflect_type_.Type_):Bool {
        while (_t.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
            _t = _t.elem();
        };
        return (stdgo._internal.go.token.Token_isexported.isExported(_t.name()?.__copy__()) || (_t.pkgPath() == (stdgo.Go.str() : stdgo.GoString)) : Bool);
    }
