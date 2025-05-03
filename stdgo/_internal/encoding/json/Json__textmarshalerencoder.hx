package stdgo._internal.encoding.json;
function _textMarshalerEncoder(_e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L474"
        if (((_v.kind() == (22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && _v.isNil() : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L475"
            _e.writeString(("null" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L476"
            return;
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_v.interface_() : stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler)) : stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler), _1 : false };
        }, _m = __tmp__._0, _ok = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L479"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L480"
            _e.writeString(("null" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L481"
            return;
        };
        var __tmp__ = _m.marshalText(), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L484"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L485"
            _e._error(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_marshalererror.MarshalerError(_v.type(), _err, ("MarshalText" : stdgo.GoString)) : stdgo._internal.encoding.json.Json_marshalererror.MarshalerError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_marshalererror.MarshalerError>)));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L487"
        _e.write(stdgo._internal.encoding.json.Json__appendstring._appendString(_e.availableBuffer(), _b, _opts._escapeHTML));
    }
