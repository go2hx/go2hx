package stdgo._internal.encoding.json;
function _textMarshalerEncoder(_e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        if (((_v.kind() == (22u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) && _v.isNil() : Bool)) {
            @:check2r _e.writeString(("null" : stdgo.GoString));
            return;
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_v.interface_() : stdgo._internal.encoding.Encoding_TextMarshaler.TextMarshaler)) : stdgo._internal.encoding.Encoding_TextMarshaler.TextMarshaler), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.encoding.Encoding_TextMarshaler.TextMarshaler), _1 : false };
        }, _m = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            @:check2r _e.writeString(("null" : stdgo.GoString));
            return;
        };
        var __tmp__ = _m.marshalText(), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _e._error(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_MarshalerError.MarshalerError(_v.type(), _err, ("MarshalText" : stdgo.GoString)) : stdgo._internal.encoding.json.Json_MarshalerError.MarshalerError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_MarshalerError.MarshalerError>)));
        };
        @:check2r _e.write(stdgo._internal.encoding.json.Json__appendString._appendString(@:check2r _e.availableBuffer(), _b, _opts._escapeHTML));
    }
