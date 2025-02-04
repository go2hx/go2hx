package stdgo._internal.encoding.json;
function _encodeByteSlice(_e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, __4:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        if (_v.isNil()) {
            @:check2r _e.writeString(("null" : stdgo.GoString));
            return;
        };
        var _s = _v.bytes();
        var _encodedLen = (@:check2r stdgo._internal.encoding.base64.Base64_stdencoding.stdEncoding.encodedLen((_s.length)) : stdgo.GoInt);
        @:check2r _e.grow(((((("\"" : stdgo.GoString) : stdgo.GoString).length) + _encodedLen : stdgo.GoInt) + ((("\"" : stdgo.GoString) : stdgo.GoString).length) : stdgo.GoInt));
        var _b = @:check2r _e.availableBuffer();
        _b = (_b.__append__((34 : stdgo.GoUInt8)));
        @:check2r stdgo._internal.encoding.base64.Base64_stdencoding.stdEncoding.encode(((_b.__slice__((_b.length)) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, _encodedLen) : stdgo.Slice<stdgo.GoUInt8>), _s);
        _b = (_b.__slice__(0, ((_b.length) + _encodedLen : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _b = (_b.__append__((34 : stdgo.GoUInt8)));
        @:check2r _e.write(_b);
    }
