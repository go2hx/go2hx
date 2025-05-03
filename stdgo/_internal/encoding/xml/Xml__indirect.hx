package stdgo._internal.encoding.xml;
function _indirect(_vf:stdgo._internal.reflect.Reflect_value.Value):stdgo._internal.reflect.Reflect_value.Value {
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L823"
        while (((_vf.kind() == (20u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || (_vf.kind() == (22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L824"
            if (_vf.isNil()) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L825"
                return _vf?.__copy__();
            };
            _vf = _vf.elem()?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L829"
        return _vf?.__copy__();
    }
