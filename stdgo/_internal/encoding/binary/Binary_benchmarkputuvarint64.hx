package stdgo._internal.encoding.binary;
function benchmarkPutUvarint64(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((10 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/varint_test.go#L241"
        _b.setBytes((8i64 : stdgo.GoInt64));
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/varint_test.go#L242"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/binary/varint_test.go#L243"
                {
                    var _j = ((0u32 : stdgo.GoUInt) : stdgo.GoUInt);
                    while ((_j < (10u32 : stdgo.GoUInt) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/varint_test.go#L244"
                        stdgo._internal.encoding.binary.Binary_putuvarint.putUvarint(_buf, ((1i64 : stdgo.GoUInt64) << ((_j * (7u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt64));
                        _j++;
                    };
                };
                _i++;
            };
        };
    }
