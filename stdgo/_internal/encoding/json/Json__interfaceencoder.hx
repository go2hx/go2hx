package stdgo._internal.encoding.json;
function _interfaceEncoder(_e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L656"
        if (_v.isNil()) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L657"
            _e.writeString(("null" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L658"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L660"
        _e._reflectValue(_v.elem()?.__copy__(), _opts?.__copy__());
    }
