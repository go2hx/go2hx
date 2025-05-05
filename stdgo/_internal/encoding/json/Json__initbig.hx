package stdgo._internal.encoding.json;
function _initBig():Void {
        var _n = (10000 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L230"
        if (stdgo._internal.testing.Testing_short.short()) {
            _n = (100 : stdgo.GoInt);
        };
        var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo._internal.encoding.json.Json__genvalue._genValue(_n)), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L234"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L235"
            throw stdgo.Go.toInterface(_err);
        };
        stdgo._internal.encoding.json.Json__jsonbig._jsonBig = _b;
    }
