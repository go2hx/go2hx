package stdgo._internal.encoding.json;
function _mayAppendQuote(_b:stdgo.Slice<stdgo.GoUInt8>, _quoted:Bool):stdgo.Slice<stdgo.GoUInt8> {
        if (_quoted) {
            _b = (_b.__append__((34 : stdgo.GoUInt8)));
        };
        return _b;
    }
