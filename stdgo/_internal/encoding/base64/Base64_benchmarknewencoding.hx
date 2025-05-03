package stdgo._internal.encoding.base64;
function benchmarkNewEncoding(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/base64/base64_test.go#L508"
        _b.setBytes(((new stdgo._internal.encoding.base64.Base64_encoding.Encoding() : stdgo._internal.encoding.base64.Base64_encoding.Encoding)._decodeMap.length : stdgo.GoInt64));
        //"file:///home/runner/.go/go1.21.3/src/encoding/base64/base64_test.go#L509"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                var _e = stdgo._internal.encoding.base64.Base64_newencoding.newEncoding(("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/" : stdgo.GoString));
//"file:///home/runner/.go/go1.21.3/src/encoding/base64/base64_test.go#L511"
                for (__16 => _v in (@:checkr _e ?? throw "null pointer dereference")._decodeMap.__copy__()) {
                    _v;
                };
                _i++;
            };
        };
    }
