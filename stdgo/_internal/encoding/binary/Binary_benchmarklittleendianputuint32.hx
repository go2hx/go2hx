package stdgo._internal.encoding.binary;
function benchmarkLittleEndianPutUint32(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L757"
        _b.setBytes((4i64 : stdgo.GoInt64));
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L758"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L759"
                stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.putUint32((stdgo._internal.encoding.binary.Binary__putbuf._putbuf.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_i : stdgo.GoUInt32));
                _i++;
            };
        };
    }
