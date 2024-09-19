package stdgo._internal.encoding.binary;
function benchmarkLittleEndianAppendUint64(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.setBytes((8i64 : stdgo.GoInt64));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                stdgo._internal.encoding.binary.Binary__putbuf._putbuf = stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.appendUint64((stdgo._internal.encoding.binary.Binary__putbuf._putbuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_i : stdgo.GoUInt64));
            });
        };
    }
