package stdgo._internal.encoding.gob;
function _valid(_v:stdgo._internal.reflect.Reflect_value.Value):Bool {
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L279"
        {
            final __value__ = _v.kind();
            if (__value__ == ((0u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L281"
                return false;
            } else if (__value__ == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L283"
                return !_v.isNil();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L285"
        return true;
    }
