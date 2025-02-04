package stdgo._internal.encoding.json;
function _interfaceEncoder(_e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        if (_v.isNil()) {
            @:check2r _e.writeString(("null" : stdgo.GoString));
            return;
        };
        @:check2r _e._reflectValue(_v.elem()?.__copy__(), _opts?.__copy__());
    }
