package stdgo._internal.encoding.json;
function _addrMarshalerEncoder(_e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        var _va = (_v.addr()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        if (_va.isNil()) {
            @:check2r _e.writeString(("null" : stdgo.GoString));
            return;
        };
        var _m = (stdgo.Go.typeAssert((_va.interface_() : stdgo._internal.encoding.json.Json_Marshaler.Marshaler)) : stdgo._internal.encoding.json.Json_Marshaler.Marshaler);
        var __tmp__ = _m.marshalJSON(), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            @:check2r _e.grow((_b.length));
            var _out = @:check2r _e.availableBuffer();
            {
                var __tmp__ = stdgo._internal.encoding.json.Json__appendCompact._appendCompact(_out, _b, _opts._escapeHTML);
                _out = __tmp__._0;
                _err = __tmp__._1;
            };
            @:check2 (@:checkr _e ?? throw "null pointer dereference").buffer.write(_out);
        };
        if (_err != null) {
            @:check2r _e._error(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_MarshalerError.MarshalerError(_v.type(), _err, ("MarshalJSON" : stdgo.GoString)) : stdgo._internal.encoding.json.Json_MarshalerError.MarshalerError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_MarshalerError.MarshalerError>)));
        };
    }
