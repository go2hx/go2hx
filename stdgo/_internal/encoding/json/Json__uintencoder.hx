package stdgo._internal.encoding.json;
function _uintEncoder(_e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        var _b = _e.availableBuffer();
        _b = stdgo._internal.encoding.json.Json__mayappendquote._mayAppendQuote(_b, _opts._quoted);
        _b = stdgo._internal.strconv.Strconv_appenduint.appendUint(_b, _v.uint(), (10 : stdgo.GoInt));
        _b = stdgo._internal.encoding.json.Json__mayappendquote._mayAppendQuote(_b, _opts._quoted);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L525"
        _e.write(_b);
    }
