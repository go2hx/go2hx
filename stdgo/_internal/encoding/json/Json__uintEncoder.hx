package stdgo._internal.encoding.json;
function _uintEncoder(_e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        var _b = _e.availableBuffer();
        _b = stdgo._internal.encoding.json.Json__mayAppendQuote._mayAppendQuote(_b, _opts._quoted);
        _b = stdgo._internal.strconv.Strconv_appendUint.appendUint(_b, _v.uint(), (10 : stdgo.GoInt));
        _b = stdgo._internal.encoding.json.Json__mayAppendQuote._mayAppendQuote(_b, _opts._quoted);
        _e.write(_b);
    }