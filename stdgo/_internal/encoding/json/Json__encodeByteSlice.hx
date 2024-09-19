package stdgo._internal.encoding.json;
function _encodeByteSlice(_e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, __8:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        if (_v.isNil()) {
            _e.writeString(("null" : stdgo.GoString));
            return;
        };
        var _s = _v.bytes();
        var _encodedLen = (stdgo._internal.encoding.base64.Base64_stdEncoding.stdEncoding.encodedLen((_s.length)) : stdgo.GoInt);
        _e.grow((((("\"" : stdgo.GoString).length) + _encodedLen : stdgo.GoInt) + (("\"" : stdgo.GoString).length) : stdgo.GoInt));
        var _b = _e.availableBuffer();
        _b = (_b.__append__((34 : stdgo.GoUInt8)));
        stdgo._internal.encoding.base64.Base64_stdEncoding.stdEncoding.encode(((_b.__slice__((_b.length)) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, _encodedLen) : stdgo.Slice<stdgo.GoUInt8>), _s);
        _b = (_b.__slice__(0, ((_b.length) + _encodedLen : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _b = (_b.__append__((34 : stdgo.GoUInt8)));
        _e.write(_b);
    }
