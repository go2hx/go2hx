package stdgo._internal.encoding.base32;
function benchmarkDecodeString(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _data = (stdgo._internal.encoding.base32.Base32_stdencoding.stdEncoding.encodeToString((new stdgo.Slice<stdgo.GoUInt8>((8192 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>))?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L475"
        _b.setBytes((_data.length : stdgo.GoInt64));
        //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L476"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L477"
                stdgo._internal.encoding.base32.Base32_stdencoding.stdEncoding.decodeString(_data.__copy__());
                _i++;
            };
        };
    }
