package stdgo._internal.encoding.json;
function _addrTextMarshalerEncoder(_e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        var _va = (_v.addr()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L492"
        if (_va.isNil()) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L493"
            _e.writeString(("null" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L494"
            return;
        };
        var _m = (stdgo.Go.typeAssert((_va.interface_() : stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler)) : stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler);
        var __tmp__ = _m.marshalText(), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L498"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L499"
            _e._error(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_marshalererror.MarshalerError(_v.type(), _err, ("MarshalText" : stdgo.GoString)) : stdgo._internal.encoding.json.Json_marshalererror.MarshalerError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_marshalererror.MarshalerError>)));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L501"
        _e.write(stdgo._internal.encoding.json.Json__appendstring._appendString(_e.availableBuffer(), _b, _opts._escapeHTML));
    }
