package stdgo._internal.encoding.json;
function _unsupportedTypeEncoder(_e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, __4:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        @:check2r _e._error(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_unsupportedtypeerror.UnsupportedTypeError(_v.type()) : stdgo._internal.encoding.json.Json_unsupportedtypeerror.UnsupportedTypeError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_unsupportedtypeerror.UnsupportedTypeError>)));
    }
