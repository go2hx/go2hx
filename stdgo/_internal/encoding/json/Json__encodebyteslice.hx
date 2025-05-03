package stdgo._internal.encoding.json;
function _encodeByteSlice(_e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, __4:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L780"
        if (_v.isNil()) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L781"
            _e.writeString(("null" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L782"
            return;
        };
        var _s = _v.bytes();
        var _encodedLen = (stdgo._internal.encoding.base64.Base64_stdencoding.stdEncoding.encodedLen((_s.length)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L786"
        _e.grow(((((("\"" : stdgo.GoString) : stdgo.GoString).length) + _encodedLen : stdgo.GoInt) + ((("\"" : stdgo.GoString) : stdgo.GoString).length) : stdgo.GoInt));
        var _b = _e.availableBuffer();
        _b = (_b.__append__((34 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L791"
        stdgo._internal.encoding.base64.Base64_stdencoding.stdEncoding.encode(((_b.__slice__((_b.length)) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, _encodedLen) : stdgo.Slice<stdgo.GoUInt8>), _s);
        _b = (_b.__slice__(0, ((_b.length) + _encodedLen : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _b = (_b.__append__((34 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L794"
        _e.write(_b);
    }
