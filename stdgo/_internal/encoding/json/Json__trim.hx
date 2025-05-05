package stdgo._internal.encoding.json;
function _trim(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L218"
        if (((_b.length) > (20 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L219"
            return (_b.__slice__((0 : stdgo.GoInt), (20 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L221"
        return _b;
    }
