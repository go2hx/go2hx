package stdgo._internal.encoding.binary;
function benchmarkLittleEndianPutUint16(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.setBytes((2i64 : stdgo.GoInt64));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.putUint16((stdgo._internal.encoding.binary.Binary__putbuf._putbuf.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_i : stdgo.GoUInt16));
            });
        };
    }