package stdgo._internal.encoding.gob;
function _allocValue(_t:stdgo._internal.reflect.Reflect_type_.Type_):stdgo._internal.reflect.Reflect_value.Value {
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L1305"
        return stdgo._internal.reflect.Reflect_new_.new_(_t).elem()?.__copy__();
    }
