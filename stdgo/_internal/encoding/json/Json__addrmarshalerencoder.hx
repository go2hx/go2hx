package stdgo._internal.encoding.json;
function _addrMarshalerEncoder(_e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        var _va = (_v.addr()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L456"
        if (_va.isNil()) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L457"
            _e.writeString(("null" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L458"
            return;
        };
        var _m = (stdgo.Go.typeAssert((_va.interface_() : stdgo._internal.encoding.json.Json_marshaler.Marshaler)) : stdgo._internal.encoding.json.Json_marshaler.Marshaler);
        var __tmp__ = _m.marshalJSON(), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L462"
        if (_err == null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L463"
            _e.grow((_b.length));
            var _out = _e.availableBuffer();
            {
                var __tmp__ = stdgo._internal.encoding.json.Json__appendcompact._appendCompact(_out, _b, _opts._escapeHTML);
                _out = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L466"
            (@:checkr _e ?? throw "null pointer dereference").buffer.write(_out);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L468"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L469"
            _e._error(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_marshalererror.MarshalerError(_v.type(), _err, ("MarshalJSON" : stdgo.GoString)) : stdgo._internal.encoding.json.Json_marshalererror.MarshalerError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_marshalererror.MarshalerError>)));
        };
    }
