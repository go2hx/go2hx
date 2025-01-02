package stdgo._internal.encoding.json;
function _unsupportedTypeEncoder(_e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, __4:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:check2r _e._error(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_UnsupportedTypeError.UnsupportedTypeError(_v.type()) : stdgo._internal.encoding.json.Json_UnsupportedTypeError.UnsupportedTypeError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_UnsupportedTypeError.UnsupportedTypeError>)));
    }
