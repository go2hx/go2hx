package stdgo._internal.encoding.json;
function _mayAppendQuote(_b:stdgo.Slice<stdgo.GoUInt8>, _quoted:Bool):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L1279"
        if (_quoted) {
            _b = (_b.__append__((34 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L1282"
        return _b;
    }
