package stdgo._internal.encoding.base32;
function benchmarkEncode(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _data = (new stdgo.Slice<stdgo.GoUInt8>((8192 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((stdgo._internal.encoding.base32.Base32_stdencoding.stdEncoding.encodedLen((_data.length)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L450"
        _b.setBytes((_data.length : stdgo.GoInt64));
        //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L451"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L452"
                stdgo._internal.encoding.base32.Base32_stdencoding.stdEncoding.encode(_buf, _data);
                _i++;
            };
        };
    }
