package stdgo._internal.encoding.base64;
function benchmarkEncodeToString(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _data = (new stdgo.Slice<stdgo.GoUInt8>((8192 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/base64/base64_test.go#L484"
        _b.setBytes((_data.length : stdgo.GoInt64));
        //"file:///home/runner/.go/go1.21.3/src/encoding/base64/base64_test.go#L485"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/base64/base64_test.go#L486"
                stdgo._internal.encoding.base64.Base64_stdencoding.stdEncoding.encodeToString(_data);
                _i++;
            };
        };
    }
