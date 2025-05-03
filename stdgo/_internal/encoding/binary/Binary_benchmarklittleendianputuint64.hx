package stdgo._internal.encoding.binary;
function benchmarkLittleEndianPutUint64(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L771"
        _b.setBytes((8i64 : stdgo.GoInt64));
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L772"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L773"
                stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.putUint64((stdgo._internal.encoding.binary.Binary__putbuf._putbuf.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_i : stdgo.GoUInt64));
                _i++;
            };
        };
    }
