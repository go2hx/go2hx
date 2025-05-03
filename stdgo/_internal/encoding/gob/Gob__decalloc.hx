package stdgo._internal.encoding.gob;
function _decAlloc(_v:stdgo._internal.reflect.Reflect_value.Value):stdgo._internal.reflect.Reflect_value.Value {
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L227"
        while (_v.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L228"
            if (_v.isNil()) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L229"
                _v.set(stdgo._internal.reflect.Reflect_new_.new_(_v.type().elem())?.__copy__());
            };
            _v = _v.elem()?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L233"
        return _v?.__copy__();
    }
