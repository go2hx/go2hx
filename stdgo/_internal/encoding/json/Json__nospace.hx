package stdgo._internal.encoding.json;
function _noSpace(_c:stdgo.GoInt32):stdgo.GoInt32 {
        if (stdgo._internal.encoding.json.Json__isspace._isSpace((_c : stdgo.GoUInt8))) {
            return (-1 : stdgo.GoInt32);
        };
        return _c;
    }
