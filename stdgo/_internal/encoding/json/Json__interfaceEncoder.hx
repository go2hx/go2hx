package stdgo._internal.encoding.json;
function _interfaceEncoder(_e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        if (_v.isNil()) {
            _e.writeString(("null" : stdgo.GoString));
            return;
        };
        _e._reflectValue(_v.elem()?.__copy__(), _opts?.__copy__());
    }