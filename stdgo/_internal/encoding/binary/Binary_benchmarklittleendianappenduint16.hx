package stdgo._internal.encoding.binary;
function benchmarkLittleEndianAppendUint16(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L750"
        _b.setBytes((2i64 : stdgo.GoInt64));
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L751"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                stdgo._internal.encoding.binary.Binary__putbuf._putbuf = stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.appendUint16((stdgo._internal.encoding.binary.Binary__putbuf._putbuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_i : stdgo.GoUInt16));
                _i++;
            };
        };
    }
